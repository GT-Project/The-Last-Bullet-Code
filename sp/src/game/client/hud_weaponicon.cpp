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
	/*virtual void				Init(void);
	virtual void VidInit(void);
	virtual void Reset(void);
	virtual void OnThink();*/
};
DECLARE_HUDELEMENT(CHudWeaponIcon);
CHudWeaponIcon::CHudWeaponIcon(const char *pElementName) : CHudElement(pElementName), BaseClass(NULL, "HudWeaponIcon")
{
	vgui::Panel *pParent = g_pClientMode->GetViewport();
	SetParent(pParent);
	SetHiddenBits(HIDEHUD_PLAYERDEAD | HIDEHUD_NEEDSUIT);
}