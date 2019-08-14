#include "cbase.h"
#include "hud_savingdata.h"
#include "hud.h"
#include "hud_numericdisplay.h"
#include "hudelement.h"
#include "hud_macros.h"
#include "clientmode.h"
#include "c_baseplayer.h"

//VGUI
#include <vgui_controls/AnimationController.h>
#include <vgui/ILocalize.h>
#include <vgui/ISurface.h>


// memdbgon must be the last include file in a .cpp file!
#include "tier0/memdbgon.h"

DECLARE_HUDELEMENT(CHudSavingData);
DECLARE_HUD_MESSAGE(CHudSavingData, ShowSavingData);
CHudSavingData::CHudSavingData(const char *pElementName) : CHudElement(pElementName), BaseClass(NULL, "HudSavingData")
{
	vgui::Panel *pParent = g_pClientMode->GetViewport();
	SetParent(pParent);
	
	
	
	SetHiddenBits(HIDEHUD_PLAYERDEAD || HIDEHUD_NEEDSUIT);
}

CHudSavingData::~CHudSavingData()
{

}

void CHudSavingData::ApplySchemeSettings(vgui::IScheme *scheme)
{
	BaseClass::ApplySchemeSettings(scheme);

	SetPaintBackgroundEnabled(false);
	SetPaintBorderEnabled(false);

	

}

void CHudSavingData::Init()
{
	HOOK_HUD_MESSAGE(CHudSavingData, ShowSavingData);

	SetAlpha(0);
	m_bShowSavingData = false;
	
}

void CHudSavingData::Reset()
{
	SetAlpha(0);
	m_bShowSavingData = false;
	
}

bool CHudSavingData::ShouldDraw()
{
  return (m_bShowSavingData && CHudElement::ShouldDraw());
}

void CHudSavingData::Paint()
{

	wchar_t *saveString = g_pVGuiLocalize->Find("#TLBR_Saved");
	wchar_t *saveIcon = L"B";
	vgui::IScheme* pScheme = vgui::scheme()->GetIScheme(GetScheme());
	vgui::HFont hFont = pScheme->GetFont("SaveIcon");

	if (m_bShowSavingData){
		if (saveString)
		{
			vgui::surface()->DrawSetTextFont(m_hTextFont);
			vgui::surface()->DrawSetTextColor(m_pTextColor);
			vgui::surface()->DrawSetTextPos(m_iTextXPos, m_iTextYPos);
			vgui::surface()->DrawPrintText(saveString, wcslen(saveString));
			vgui::surface()->DrawSetTextFont(hFont);	
			vgui::surface()->DrawSetTextColor(255, 255, 255, 255);
			vgui::surface()->DrawSetTextPos(m_iIconXPos, m_iIconYPos);
			vgui::surface()->DrawPrintText(saveIcon, wcslen(saveIcon));
			
		}
		else
		{
			vgui::surface()->DrawSetTextFont(m_hTextFont);
			vgui::surface()->DrawSetTextColor(m_pTextColor);
			vgui::surface()->DrawSetTextPos(m_iTextXPos, m_iTextYPos);
			vgui::surface()->DrawPrintText(L"    Game Saved", 15);
			vgui::surface()->DrawSetTextFont(hFont);	
			vgui::surface()->DrawSetTextColor(255, 255, 255, 255);
			vgui::surface()->DrawSetTextPos(m_iIconXPos, m_iIconYPos);
			vgui::surface()->DrawPrintText(saveIcon, wcslen(saveIcon));
		
		}
	}
}

void CHudSavingData::MsgFunc_ShowSavingData(bf_read &msg)
{
	m_bShowSavingData = msg.ReadByte();

	g_pClientMode->GetViewportAnimationController()->StartAnimationSequence("ShowSavingData"); 
}
