//========= Copyright � 1996-2005, Valve Corporation, All rights reserved. ============//
//
// Purpose: Hit Marker
//
//=============================================================================//

#include "hudelement.h"
#include "hud_numericdisplay.h"
#include <vgui_controls/Panel.h>

class CHudHitmarker : public vgui::Panel, public CHudElement
{
	DECLARE_CLASS_SIMPLE(CHudHitmarker, vgui::Panel);

public:
	CHudHitmarker(const char *pElementName);

	void Init();
	void Reset();
	bool ShouldDraw();

	void MsgFunc_ShowHitmarker(bf_read &msg);

protected:
	virtual void ApplySchemeSettings(vgui::IScheme *scheme);
	virtual void Paint(void);

private:
	bool m_bHitmarkerShow;
	float m_fAnimTimeout;
	int m_iHitmarkerType;

	CPanelAnimationVar(Color, m_HitmarkerColor, "HitMarkerColor", "255 255 255 255");
};