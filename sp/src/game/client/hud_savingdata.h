#include "hud.h"
#include "hudelement.h"
#include <vgui_controls/Panel.h>
class CHudSavingData : public CHudElement, public vgui::Panel
{
	DECLARE_CLASS_SIMPLE(CHudSavingData, vgui::Panel);
public:
	CHudSavingData(const char *pElementName);
	virtual ~CHudSavingData();

	void Init();
	void Reset();
	bool ShouldDraw();
	void MsgFunc_ShowSavingData(bf_read &msg);
protected: 
	virtual void ApplySchemeSettings(vgui::IScheme *scheme);
	virtual void Paint();
private:
	bool m_bShowSavingData;
	CPanelAnimationVar(vgui::HFont, m_hTextFont, "TextFont", "CenterPrintText");
	CPanelAnimationVar(Color, m_pTextColor, "TextColor", "0 255 0 255");
	CPanelAnimationVarAliasType(int, m_iTextXPos, "text_xpos", "10", "proportional_int");
	CPanelAnimationVarAliasType(int, m_iTextYPos, "text_ypos", "10", "proportional_int");
	CPanelAnimationVarAliasType(int, m_iIconXPos, "icon_xpos", "139", "proportional_int");
	CPanelAnimationVarAliasType(int, m_iIconYPos, "icon_ypos", "0", "proportional_int");
	
};

