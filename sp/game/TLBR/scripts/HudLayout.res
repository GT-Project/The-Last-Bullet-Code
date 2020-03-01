"Resource/HudLayout.res"
{
//HalfLife2
//    {
//		"controlName"	"Label"
//		"fieldName"		"HalfLife2"
//		"visible"		"1"
//		"enabled"		"1"
//		"font"			"Crosshairs"
//		"labelText"		"Q"
//	"textAlignment"	"center"		
//	"xpos"			"c-19"
//		"ypos"			"c-5"
//		"wide"          "38" // 37
//		"fgcolor_override" 	"255 255 255 255" // CROSSHAIR COLOR
//	}

HudPosture
	{
		"fieldName" 		"HudPosture"
		"visible" 		"1"
		"enabled"       "1"
		"PaintBackgroundType"	"2"
		"xpos"	"48"
		"ypos"	"316"
		"tall"  "36"
		"wide"	"36"
		"font"	"WeaponIconsSmall"
		"icon_xpos"	"10"
		"icon_ypos" 	"2"
	}

HudAmmoBar
{

	"fieldName" "HudAmmoBar"
	"visible" "1"
	"enabled" "1"
	"xpos" "r176"
	"ypos" "400"
	"wide" "159"
	"tall" "16"
	"PaintBackgroundType" "0"
	"BarChunkWidth" "1"
	"BarChunkGap" "1"
	"BarInsetX" "2"
    "BarInsetY" "2"
    "BarWidth" "157"
    "BarHeight" "12"
	"AmmoBarColor" "247 208 79 255"
    "AmmoBarDisabledAlpha" "70"
}

HudHitmarker
	{
		"fieldName" "HudHitmarker"
		"visible" "1"
		"enabled" "1"
        "outline" "1"
	}
HudSavingData
{
  "fieldName" "HudSavingData"
  "visible" "1"
  "enabled" "1"
  "xpos" "r199"
  "ypos" "10"
  "wide" "190"
  "tall" "70"
  "TextColor" "255 255 255 255"
  "TextFont"  "CloseCaption_Normal"
  "text_xpos" "10"
  "text_ypos" "10"
  "icon_xpos" "136"
  "icon_ypos" "-10"
}
	HudHealth
	{
		"fieldName"		"HudHealth"
		"xpos"	"c-77"
		"ypos"	"435"
		"wide"	"160"
		"tall"  "35"
		"visible" "1"
		"enabled" "1"
		"outline" "0"

		"PaintBackgroundType"	"2"

		"text_xpos" "15"
		"text_ypos" "-7" //-7
		"TextFont" "HUDIcons"
		"digit_xpos" "32"
		"digit_ypos" "-2"
		"fgcolor_override" 	"255 255 255 255"
	}
	
	HudSuit
	{
		"fieldName"		"HudSuit"
		"xpos"	"c-10"
		"ypos"	"427"
		"wide"	"90"
		"tall"  "50"
		"visible" "1"
		"enabled" "1"

		"PaintBackgroundType"	"2"

		"text_xpos" "15"
		"text_ypos" "4" //4
		"TextFont" "HUDIcons"
		"digit_xpos" "38"
		"digit_ypos" "7"
	}

	HudAmmo
	{
		"fieldName" "HudAmmo"
		"xpos"	"r80" // r176
		"ypos"	"415" // 440
		"wide"	"68" // 136
		"tall"  "36" // 36 
		"visible" "1"
		"enabled" "1"

		"PaintBackgroundType"	"0"

		"text_xpos" "43" // 8
		"text_ypos" "16" // 20
		
		"digit_xpos" "5" // 44
		"digit_ypos" "0" // 2
		"digit2_xpos" "40" // 98
		"digit2_ypos" "1" // 16
		
	}

//	HudAmmoSecondary
//	{
//		"fieldName" "HudAmmoSecondary"
//		"xpos"	"r48" // 76
//		"ypos"	"440" // 432
//		"wide"	"40"
//		"tall"  "28"
//		"visible" "0"
//		"enabled" "0"
//
//		"PaintBackgroundType"	"3"
//
//		"digit_xpos" "8"
//		"digit_ypos" "-2"
//	}
	
	HudSuitPower
	{
		"fieldName" "HudSuitPower"
		"visible" "1"
		"enabled" "1"
		"xpos"	"c-77"
		"ypos"	"471"
		"wide"	"160"
		"tall"	"8"
		
		"AuxPowerLowColor" "255 0 0 220"
		"AuxPowerHighColor" "0 80 255 255"
		"AuxPowerDisabledAlpha" "20"

		"BarInsetX" "2"
		"BarInsetY" "2"
		"BarWidth" "157"
		"BarHeight" "4"
		"BarChunkWidth" "1"
		"BarChunkGap" "0"

		//"text_xpos" "8"
		//"text_ypos" "4"
		//"text2_xpos" "8"
		//"text2_ypos" "22"
		//"text2_gap" "10"

		"PaintBackgroundType"	"2"
	}
	
	HudFlashlight
	{
		"fieldName" "HudFlashlight"
		"visible" "0"
		"enabled" "1"
		"xpos"	"16"
		"ypos"	"370"
		"wide"	"102"
		"tall"	"20"
		
		"text_xpos" "8"
		"text_ypos" "6"
		"TextColor"	"255 170 0 220"

		"PaintBackgroundType"	"2"
	}
	
	HudDamageIndicator
	{
		"fieldName" "HudDamageIndicator"
		"visible" "1"
		"enabled" "1"
		"DmgColorLeft" "255 0 0 0"
		"DmgColorRight" "255 0 0 0"
		
		"dmg_xpos" "30"
		"dmg_ypos" "100"
		"dmg_wide" "36"
		"dmg_tall1" "240"
		"dmg_tall2" "200"
	}

	HudZoom
	{
		"fieldName" "HudZoom"
		"visible" "1"
		"enabled" "1"
		"Circle1Radius" "66"
		"Circle2Radius"	"74"
		"DashGap"	"16"
		"DashHeight" "4"
		"BorderThickness" "88"
	}

	HudWeaponSelection
	{
		"fieldName" "HudWeaponSelection"
		"ypos" 	"16"
		"visible" "1"
		"enabled" "1"
		"SmallBoxSize" "32"
		"LargeBoxWide" "112"
		"LargeBoxTall" "80"
		"BoxGap" "8"
		"SelectionNumberXPos" "4"
		"SelectionNumberYPos" "4"
		"SelectionGrowTime"	"0.4"
		"TextYPos" "64"
	}

	 HudCrosshair
	 {
		 "fieldName" "HudCrosshair"
		 "visible" "1"
		 "enabled" "1"
		 "wide"	 "1024"
		 "tall"	 "768"
		 "xpos"	 "0"
		 
		 "ypos"	 "0"
	 }
   HudWeaponIcon
	{
		"fieldName" "HudWeaponIcon"
		"visible" "1"
		"enabled" "1"
		"wide"	 "60"
		"tall"	 "42"
		"xpos"	 "r176"
		"ypos"	 "415"
		"IconColor" "255 255 255 255"
		
	}
	HudDeathNotice
	{
		"fieldName" "HudDeathNotice"
		"visible" "1"
		"enabled" "1"
		"xpos"	 "r640"
		"ypos"	 "24"
		"wide"	 "628"
		"tall"	 "468"

		"MaxDeathNotices" "3"
		"LineHeight"	  "22"
		"RightJustify"	  "1"	// If 1, draw notices from the right

		"TextFont"				"Default"
	}

	HudVehicle
	{
		"fieldName" "HudVehicle"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	ScorePanel
	{
		"fieldName" "ScorePanel"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudTrain
	{
		"fieldName" "HudTrain"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudMOTD
	{
		"fieldName" "HudMOTD"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudMessage
	{
		"fieldName" "HudMessage"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"ypos"	"-100"
		"tall"	 "480"
	}

	HudMenu
	{
		"fieldName" "HudMenu"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

		HudCloseCaption
	{
		"fieldName" "HudCloseCaption"
		"visible"	"1"
		"enabled"	"1"
		"xpos"		"c-250"
		"ypos"		"276"	[$WIN32]
		"ypos"		"236"	[$X360]
		"wide"		"500"
		"tall"		"136"	[$WIN32]
		"tall"		"176"	[$X360]

		"BgAlpha"	"0"

		"GrowTime"		"0.25"
		"ItemHiddenTime"	"0.2"  // Nearly same as grow time so that the item doesn't start to show until growth is finished
		"ItemFadeInTime"	"0.15"	// Once ItemHiddenTime is finished, takes this much longer to fade in
		"ItemFadeOutTime"	"0.3"
		"topoffset"		"0"		[$WIN32]
		"topoffset"		"0"	[$X360]
	}

	HudHistoryResource
	{
		"fieldName" "HudHistoryResource"
		"visible" "1"
		"enabled" "1"
		"xpos"	"r252"
		"ypos"	"40"
		"wide"	 "248"
		"tall"	 "320"

		"history_gap"	"56"
		"icon_inset"	"28"
		"text_inset"	"26"
		"NumberFont"	"HudNumbersSmall"
	}

	HudGeiger
	{
		"fieldName" "HudGeiger"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

//	HUDQuickInfo
//	{
//		"fieldName" "HUDQuickInfo"
//		"visible" "0"
//		"enabled" "0"
//		"wide"	 "640"
//		"tall"	 "480"
//	}

	HudWeapon
	{
		"fieldName" "HudWeapon"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}
	HudAnimationInfo
	{
		"fieldName" "HudAnimationInfo"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudPredictionDump
	{
		"fieldName" "HudPredictionDump"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudHintDisplay
	{
		"fieldName"				"HudHintDisplay"
		"visible"				"0"
		"enabled"				"1"
		"xpos"					"c-100" // c-240
		"ypos"					"c10" //c60
		"xpos"	"r148"	[$X360]
		"ypos"	"r338"	[$X360]
		"wide"					"480"
		"tall"					"100"
		"HintSize"				"1"
		"text_xpos"				"8"
		"text_ypos"				"8"
		"center_x"				"0"	// center text horizontally
		"center_y"				"-1"	// align text on the bottom
		"paintbackground"		"0"
	}	

	HudHintKeyDisplay
	{
		"fieldName"	"HudHintKeyDisplay"
		"visible"	"1"
		"enabled" 	"1"
		"xpos"		"c-40" //r120
		"ypos"		"c10" //r340	
		"wide"		"100"
		"tall"		"200"
		"text_xpos"	"8"
		"text_ypos"	"8"
		"text_xgap"	"8"
		"text_ygap"	"8"
		"TextColor"	"0 0 255 220"

		"PaintBackgroundType"	"2"
	}

	HudSquadStatus
	{
		"fieldName"	"HudSquadStatus"
		"visible"	"1"
		"enabled" "1"
		"xpos"	"r120"
		"ypos"	"380"
		"wide"	"104"
		"tall"	"46"
		"text_xpos"	"8"
		"text_ypos"	"34"
		"SquadIconColor"	"255 220 0 160"
		"IconInsetX"	"8"
		"IconInsetY"	"0"
		"IconGap"		"24"

		"PaintBackgroundType"	"2"
	}

	HudPoisonDamageIndicator
	{
		"fieldName"	"HudPoisonDamageIndicator"
		"visible"	"0"
		"enabled" "1"
		"xpos"	"16"
		"ypos"	"346"
		"wide"	"136"
		"tall"	"38"
		"text_xpos"	"8"
		"text_ypos"	"8"
		"text_ygap" "14"
		"TextColor"	"255 170 0 220"
		"PaintBackgroundType"	"2"
	}
	HudCredits
	{
		"fieldName"	"HudCredits"
		"TextFont"	"Default"
		"visible"	"1"
		"xpos"	"0"
		"ypos"	"0"
		"wide"	"640"
		"tall"	"480"
		"TextColor"	"255 255 255 192"

	}
	"HudChat"
	{
		"ControlName"		"EditablePanel"
		"fieldName" 		"HudChat"
		"visible" 		"1"
		"enabled" 		"1"
		"xpos"			"6"
		"ypos"			"370"
		"wide"	 		"320"
		"tall"	 		"120"
		"PaintBackgroundType"	"2"
	}
}