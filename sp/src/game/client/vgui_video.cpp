//========= Copyright Valve Corporation, All rights reserved. ============//
//
// Purpose: VGUI panel which can play back video, in-engine
//
//=============================================================================

#include "cbase.h"
#include <vgui/IVGui.h>
#include "vgui/IInput.h"
#include <vgui/ISurface.h>
#include "ienginevgui.h"
#include "iclientmode.h"
#include "vgui_video.h"
#include "engine/IEngineSound.h"

// memdbgon must be the last include file in a .cpp file!!!
#include "tier0/memdbgon.h"


VideoPanel::VideoPanel( unsigned int nXPos, unsigned int nYPos, unsigned int nHeight, unsigned int nWidth, bool allowAlternateMedia ) : 
	BaseClass( NULL, "VideoPanel" ),
	m_VideoMaterial( NULL ),
	m_nPlaybackWidth( 0 ),
	m_nPlaybackHeight( 0 ),
	m_bAllowAlternateMedia( allowAlternateMedia ),
	m_bAllowInterruption(true)
{
	vgui::VPANEL pParent = enginevgui->GetPanel( PANEL_ROOT );
	SetParent( pParent );
	SetVisible( false );
	
	// Must be passed in, off by default
	m_szExitCommand[0] = '\0';

	m_bBlackBackground = true;

	SetKeyBoardInputEnabled( true );
	SetMouseInputEnabled( false );

	SetProportional( false );
	SetVisible( true );
	SetPaintBackgroundEnabled( false );
	SetPaintBorderEnabled( false );
	
	// Set us up
	SetTall( nHeight );
	SetWide( nWidth );
	SetPos( nXPos, nYPos );

	SetCursor(NULL);

	SetScheme(vgui::scheme()->LoadSchemeFromFile( "resource/VideoPanelScheme.res", "VideoPanelScheme"));
	LoadControlSettings("resource/UI/VideoPanel.res");
}

//-----------------------------------------------------------------------------
// Properly shutdown out materials
//-----------------------------------------------------------------------------
VideoPanel::~VideoPanel( void )
{
	SetParent( (vgui::Panel *) NULL );

	// Shut down this video, destroy the video material
	if ( g_pVideo != NULL && m_VideoMaterial != NULL )
	{
		g_pVideo->DestroyVideoMaterial( m_VideoMaterial );
		m_VideoMaterial = NULL;
	}
}

//-----------------------------------------------------------------------------
// Purpose: Begins playback of a movie
// Output : Returns true on success, false on failure.
//-----------------------------------------------------------------------------
bool VideoPanel::BeginPlayback( const char *pFilename )
{
	// Who the heck hacked this in?
#ifdef _X360
	XVIDEO_MODE videoMode;
	XGetVideoMode( &videoMode );

	// for 50Hz PAL, load a 25Hz version of the ep1_recap movie.
	if( ( videoMode.RefreshRate < 59.0f ) && ( Q_stricmp( pFilename, "media/ep1_recap.bik" ) == 0 ) )
	{
		pFilename = "media/ep1_recap_25fps.bik";
	}
#endif

	// need working video services
	if ( g_pVideo == NULL )
		return false;

	// Create a new video material
	if ( m_VideoMaterial != NULL )
	{
		g_pVideo->DestroyVideoMaterial( m_VideoMaterial );
		m_VideoMaterial = NULL;
	}

	m_VideoMaterial = g_pVideo->CreateVideoMaterial( "VideoMaterial", pFilename, "GAME",
													VideoPlaybackFlags::DEFAULT_MATERIAL_OPTIONS,
													VideoSystem::DETERMINE_FROM_FILE_EXTENSION, m_bAllowAlternateMedia );
	
	if ( m_VideoMaterial == NULL )
		return false;

	// We want to be the sole audio source
	// FIXME: This may not always be true!
	enginesound->NotifyBeginMoviePlayback();

	int nWidth, nHeight;
	m_VideoMaterial->GetVideoImageSize( &nWidth, &nHeight );
	m_VideoMaterial->GetVideoTexCoordRange( &m_flU, &m_flV );
	m_pMaterial = m_VideoMaterial->GetMaterial();


	float flFrameRatio = ( (float) GetWide() / (float) GetTall() );
	float flVideoRatio = ( (float) nWidth / (float) nHeight );

	if ( flVideoRatio > flFrameRatio )
	{
		m_nPlaybackWidth = GetWide();
		m_nPlaybackHeight = ( GetWide() / flVideoRatio );
	}
	else if ( flVideoRatio < flFrameRatio )
	{
		m_nPlaybackWidth = ( GetTall() * flVideoRatio );
		m_nPlaybackHeight = GetTall();
	}
	else
	{
		m_nPlaybackWidth = GetWide();
		m_nPlaybackHeight = GetTall();
	}

	return true;
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void VideoPanel::Activate( void )
{
	MoveToFront();
	RequestFocus();
	SetVisible( true );
	SetEnabled( true );

	vgui::surface()->SetMinimized( GetVPanel(), false );
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void VideoPanel::DoModal( void )
{
	MakePopup();
	Activate();

	vgui::input()->SetAppModalSurface( GetVPanel() );
	vgui::surface()->RestrictPaintToSinglePanel( GetVPanel() );
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void VideoPanel::OnKeyCodeTyped( vgui::KeyCode code )
{
	bool bInterruptKeyPressed = ( code == KEY_ESCAPE );
	if ( m_bAllowInterruption && bInterruptKeyPressed )
	{
		if (engine->IsPaused())
		{
			engine->ClientCmd("cancelselect");
		}
		OnClose();
	}
	else
	{
		BaseClass::OnKeyCodeTyped( code );
	}
}

//-----------------------------------------------------------------------------
// Purpose: Handle keys that should cause us to close
//-----------------------------------------------------------------------------
void VideoPanel::OnKeyCodePressed(vgui::KeyCode keycode)
{
	vgui::KeyCode code = GetBaseButtonCode(keycode);

	// All these keys will interrupt playback
	bool bInterruptKeyPressed = (code == KEY_ESCAPE ||
		code == KEY_BACKQUOTE ||
		code == KEY_SPACE ||
		code == KEY_ENTER ||
		code == KEY_XBUTTON_A ||
		code == KEY_XBUTTON_B ||
		code == KEY_XBUTTON_X ||
		code == KEY_XBUTTON_Y ||
		code == KEY_XBUTTON_START ||
		code == KEY_XBUTTON_BACK);

	// These keys cause the panel to shutdown
	if (m_bAllowInterruption && bInterruptKeyPressed)
	{
		OnClose();
	}
	else
	{
		BaseClass::OnKeyCodePressed(keycode);
	}
}




//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void VideoPanel::OnClose( void )
{
	enginesound->NotifyEndMoviePlayback();
	BaseClass::OnClose();

	if ( vgui::input()->GetAppModalSurface() == GetVPanel() )
	{
		vgui::input()->ReleaseAppModalSurface();
	}

	vgui::surface()->RestrictPaintToSinglePanel( NULL );

	// Fire an exit command if we're asked to do so
	if ( m_szExitCommand[0] )
	{
		engine->ClientCmd( m_szExitCommand );
	}

	SetVisible( false );
	MarkForDeletion();
}






//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void VideoPanel::GetPanelPos( int &xpos, int &ypos )
{
	xpos = ( (float) ( GetWide() - m_nPlaybackWidth ) / 2 );
	ypos = ( (float) ( GetTall() - m_nPlaybackHeight ) / 2 );
}

//-----------------------------------------------------------------------------
// Purpose: Update and draw the frame
//-----------------------------------------------------------------------------
void VideoPanel::Paint( void )
{
	BaseClass::Paint();

	if ( m_VideoMaterial == NULL )
		return;

	if ( m_VideoMaterial->Update() == false )
	{
		// Issue a close command
		OnVideoOver();
		OnClose();
	}

	// Sit in the "center"
	int xpos, ypos;
	GetPanelPos( xpos, ypos );

	// Black out the background (we could omit drawing under the video surface, but this is straight-forward)
	if ( m_bBlackBackground )
	{
		vgui::surface()->DrawSetColor(  0, 0, 0, 255 );
		vgui::surface()->DrawFilledRect( 0, 0, GetWide(), GetTall() );
	}

	// Draw the polys to draw this out
	CMatRenderContextPtr pRenderContext( materials );
	
	pRenderContext->MatrixMode( MATERIAL_VIEW );
	pRenderContext->PushMatrix();
	pRenderContext->LoadIdentity();

	pRenderContext->MatrixMode( MATERIAL_PROJECTION );
	pRenderContext->PushMatrix();
	pRenderContext->LoadIdentity();

	pRenderContext->Bind( m_pMaterial, NULL );

	CMeshBuilder meshBuilder;
	IMesh* pMesh = pRenderContext->GetDynamicMesh( true );
	meshBuilder.Begin( pMesh, MATERIAL_QUADS, 1 );

	float flLeftX = xpos;
	float flRightX = xpos + (m_nPlaybackWidth-1);

	float flTopY = ypos;
	float flBottomY = ypos + (m_nPlaybackHeight-1);

	// Map our UVs to cut out just the portion of the video we're interested in
	float flLeftU = 0.0f;
	float flTopV = 0.0f;

	// We need to subtract off a pixel to make sure we don't bleed
	float flRightU = m_flU - ( 1.0f / (float) m_nPlaybackWidth );
	float flBottomV = m_flV - ( 1.0f / (float) m_nPlaybackHeight );

	// Get the current viewport size
	int vx, vy, vw, vh;
	pRenderContext->GetViewport( vx, vy, vw, vh );

	// map from screen pixel coords to -1..1
	flRightX = FLerp( -1, 1, 0, vw, flRightX );
	flLeftX = FLerp( -1, 1, 0, vw, flLeftX );
	flTopY = FLerp( 1, -1, 0, vh ,flTopY );
	flBottomY = FLerp( 1, -1, 0, vh, flBottomY );

	float alpha = ((float)GetFgColor()[3]/255.0f);

	for ( int corner=0; corner<4; corner++ )
	{
		bool bLeft = (corner==0) || (corner==3);
		meshBuilder.Position3f( (bLeft) ? flLeftX : flRightX, (corner & 2) ? flBottomY : flTopY, 0.0f );
		meshBuilder.Normal3f( 0.0f, 0.0f, 1.0f );
		meshBuilder.TexCoord2f( 0, (bLeft) ? flLeftU : flRightU, (corner & 2) ? flBottomV : flTopV );
		meshBuilder.TangentS3f( 0.0f, 1.0f, 0.0f );
		meshBuilder.TangentT3f( 1.0f, 0.0f, 0.0f );
		meshBuilder.Color4f( 1.0f, 1.0f, 1.0f, alpha );
		meshBuilder.AdvanceVertex();
	}
	
	meshBuilder.End();
	pMesh->Draw();

	pRenderContext->MatrixMode( MATERIAL_VIEW );
	pRenderContext->PopMatrix();

	pRenderContext->MatrixMode( MATERIAL_PROJECTION );
	pRenderContext->PopMatrix();
}

//-----------------------------------------------------------------------------
// Purpose: Create and playback a video in a panel
// Input  : nWidth - Width of panel (in pixels) 
//			nHeight - Height of panel
//			*pVideoFilename - Name of the file to play
// Output : Returns true on success, false on failure.
//-----------------------------------------------------------------------------
bool VideoPanel_Create( unsigned int nXPos, unsigned int nYPos, 
						unsigned int nWidth, unsigned int nHeight, 
						const char *pVideoFilename, 
						const char *pExitCommand /*= NULL*/,
						bool bAllowInterruption /*= true*/)
{
	// Create the base video panel
	VideoPanel *pVideoPanel = new VideoPanel( nXPos, nYPos, nHeight, nWidth, false  );
	if ( pVideoPanel == NULL )
		return false;

	// Toggle if we want the panel to allow interruption
	pVideoPanel->SetAllowInterrupt(bAllowInterruption);

	// Set the command we'll call (if any) when the video is interrupted or completes
	pVideoPanel->SetExitCommand( pExitCommand );

	// Start it going
	if ( pVideoPanel->BeginPlayback( pVideoFilename ) == false )
	{
		delete pVideoPanel;
		return false;
	}

	// Take control
	pVideoPanel->DoModal();

	return true;
}

//-----------------------------------------------------------------------------
// Purpose: Take a raw filename and ensure it points to the correct directory and file extension
//-----------------------------------------------------------------------------
void ComposeBinkFilename(const char *lpszFilename, char *lpszOut, int nOutSize)
{
	Q_strncpy(lpszOut, "media/", nOutSize);	// Assume we must play out of the media directory
	char strFilename[MAX_PATH];
	Q_StripExtension(lpszFilename, strFilename, MAX_PATH);
	Q_strncat(lpszOut, strFilename, nOutSize);
	Q_strncat(lpszOut, ".bik", nOutSize);		// Assume we're a .bik extension type
}

//-----------------------------------------------------------------------------
// Purpose: Create a video panel with the supplied commands
//-----------------------------------------------------------------------------
void CreateVideoPanel(const char *lpszFilename, const char *lpszExitCommand, int nWidth, int nHeight, bool bAllowInterruption)
{
	char strFullpath[MAX_PATH];
	ComposeBinkFilename(lpszFilename, strFullpath, sizeof(strFullpath));

	// Use the full screen size if they haven't specified an override
	unsigned int nScreenWidth = (nWidth != 0) ? nWidth : ScreenWidth();
	unsigned int nScreenHeight = (nHeight != 0) ? nHeight : ScreenHeight();

	// Create the panel and go!
	if (VideoPanel_Create(0, 0, nScreenWidth, nScreenHeight, strFullpath, lpszExitCommand, bAllowInterruption) == false)
	{
		Warning("Unable to play video: %s\n", strFullpath);
	}
}
//-----------------------------------------------------------------------------
// Purpose: Used to launch a video playback (Debug) -
//  user must include file extension
//-----------------------------------------------------------------------------

CON_COMMAND( playvideo, "Plays a video: <filename> [width height]" )
{
	if ( args.ArgC() < 2 )
		return;

	unsigned int nScreenWidth = Q_atoi( args[2] );
	unsigned int nScreenHeight = Q_atoi( args[3] );
	
	CreateVideoPanel(args[1], NULL, nScreenWidth, nScreenHeight, true);
}

CON_COMMAND(playvideo_nointerrupt, "Plays a video without ability to skip: <filename> [width height]")
{
	if (args.ArgC() < 2)
		return;

	unsigned int nScreenWidth = Q_atoi(args[2]);
	unsigned int nScreenHeight = Q_atoi(args[3]);

	CreateVideoPanel(args[1], NULL, nScreenWidth, nScreenHeight, false);
}

//-----------------------------------------------------------------------------
// Purpose: Used to launch a video playback and fire a command on completion
//-----------------------------------------------------------------------------

CON_COMMAND( playvideo_exitcommand, "Plays a video and fires and exit command when it is stopped or finishes: <filename> <exit command>" )
{
	if ( args.ArgC() < 2 )
		return;

	/*unsigned int nScreenWidth = ScreenWidth();
	unsigned int nScreenHeight = ScreenHeight();*/

	char *pExitCommand = Q_strstr( args.GetCommandString(), args[2] );

	CreateVideoPanel(args[1], pExitCommand, 0, 0, true);
}

CON_COMMAND(playvideo_exitcommand_nointerrupt, "Plays a video (without interruption) and fires and exit command when it is stopped or finishes: <filename> <exit command>")
{
	if (args.ArgC() < 2)
		return;

	// Pull out the exit command we want to use
	char *pExitCommand = Q_strstr(args.GetCommandString(), args[2]);

	CreateVideoPanel(args[1], pExitCommand, 0, 0, false);
}


