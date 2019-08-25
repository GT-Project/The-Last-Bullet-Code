//KILL ME PLZ
#include "cbase.h"
#include "hud.h"
#include "hudelement.h"
#include "hud_macros.h"
#include "hud_numericdisplay.h"
#include "iclientmode.h"
#include "iclientvehicle.h"
#include <vgui_controls/AnimationController.h>
#include <vgui/ILocalize.h>
#include <vgui_controls/Panel.h>
#include "ihudlcd.h"

// memdbgon must be the last include file in a .cpp file!!!
#include "tier0/memdbgon.h"

class CHudWeaponIcon : public CHudElement, public vgui::Panel
{
	DECLARE_CLASS_SIMPLE(CHudWeaponIcon, vgui::Panel);
public:
	CHudWeaponIcon(const char *pElementName);
	virtual ~CHudWeaponIcon();
	//virtual void SetWeaponIcon(CHudTexture *texture);

	virtual void				Init(void);
	//virtual void VidInit(void);
	//virtual void Reset(void);
	//virtual void OnThink(void);+

	bool ShouldDraw(void);
	
protected:
	virtual void	ApplySchemeSettings(vgui::IScheme *scheme);
	virtual void Paint();
	
private:
	CHudTexture *m_pWeaponIcon;
	CPanelAnimationVar(Color, m_clrWeaponIcon, "IconColor", "255 255 255 255");
	
	
	
};
DECLARE_HUDELEMENT(CHudWeaponIcon);

CHudWeaponIcon::CHudWeaponIcon(const char *pElementName) : CHudElement(pElementName), BaseClass(NULL, "HudWeaponIcon")
{
	vgui::Panel *pParent = g_pClientMode->GetViewport();
	SetParent(pParent);



	SetHiddenBits(HIDEHUD_PLAYERDEAD | HIDEHUD_NEEDSUIT);
}


CHudWeaponIcon::~CHudWeaponIcon()
{
	
}

void CHudWeaponIcon::Init()
{
	m_pWeaponIcon = 0;
	m_clrWeaponIcon = Color(0, 0, 0, 0);
	
}


void CHudWeaponIcon::ApplySchemeSettings(vgui::IScheme *scheme)
{
	BaseClass::ApplySchemeSettings(scheme);

	SetPaintBackgroundEnabled(false);
	SetPaintBorderEnabled(false);
	

}



bool CHudWeaponIcon::ShouldDraw()
{
	bool bNeedsDraw = false;
	CBasePlayer *pPlayer = CBasePlayer::GetLocalPlayer();
	if (!pPlayer) return false;
	CBaseCombatWeapon *pWeapon = pPlayer->GetActiveWeapon();
	if (pWeapon == NULL) return false;

	bNeedsDraw = (pWeapon->GetWpnData().iconWeaponIcon && m_clrWeaponIcon[3] > 0);


	return (bNeedsDraw && CHudElement::ShouldDraw());
}




void CHudWeaponIcon::Paint()
{
	CBasePlayer *pPlayer = CBasePlayer::GetLocalPlayer();
	if (!pPlayer) return;
	CBaseCombatWeapon *pWeapon = pPlayer->GetActiveWeapon();

	//if (pWeapon)
	//{
	//	pWeapon->GetSpriteWeaponIcon();
	//}
	
	
	
		int		x, y;

		// Find our screen position to start from
		x = 3;
		y = 3;
		//if (!m_pWeaponIcon) return;
		if (pWeapon && pWeapon->GetSpriteWeaponIcon()){
			m_pWeaponIcon = pWeapon->GetWpnData().iconWeaponIcon;
			Color clr = m_clrWeaponIcon;
			m_pWeaponIcon->DrawSelf(x, y, clr);
		}
		else return;
	
}

