///////////////////////////////////////////////////////////
// Tracker scheme resource file
//
// sections:
//		Colors			- all the colors used by the scheme
//		BaseSettings	- contains settings for app to use to draw controls
//		Fonts			- list of all the fonts used by app
//		Borders			- description of all the borders
//
///////////////////////////////////////////////////////////
Scheme
{
	//////////////////////// COLORS ///////////////////////////
	//////////////////////// COLORS ///////////////////////////
	Colors
	{
		// base colors

		"HUD_Color"	"255 255 255 255" // HUD Color

		"ScoreBoard_BgColor"	"0 0 0 200" // ScoreBoard Background Color
		"ScoreBoard_NNBgColor"	"255 255 255 40" //Background color of your Nick Name on ScoreBoard

		"Orange"			"255 80 0 255" // 255 176 0 255
		"OrangeDim"			"255 80 0 120" // 255 176 0 120
		"LightOrange"			"255 80 0 128" // 188 112 0 128

		"LightBlue"			"0 128 255 255"
		
		"Red"				"192 28 0 140" // 192 28 0 140
		"Red2" "255 0 0 255"
		"Black"				"0 0 0 196" // 0 0 0 196
		"Black2"            "0 0 0 0"
		"TransparentBlack"	"0 0 0 196" // 0 0 0 196
		"TransparentLightBlack"	"0 0 0 90" // 0 0 0 90

		"Blank"				"0 0 0 0"
		
		"White" "255 255 255 255"
	        "A" "0 128 255 255"
	}
	
	///////////////////// BASE SETTINGS ////////////////////////
	//
	// default settings for all panels
	// controls use these to determine their settings
	BaseSettings
	{
		"FgColor"			"255 255 255 196" // 255 220 0 100
		"BgColor"			"0 0 0 0" // 0 0 0 76

		"Panel.FgColor"			"255 255 255 255" // 255 220 0 100
		"Panel.BgColor"			"0 0 0 0" // 0 0 0 76
		
		"BrightFg"		"255 220 0 255" // 255 220 0 255

		"DamagedBg"			"180 0 0 200" // 180 0 0 200
		"DamagedFg"			"180 0 0 230" // 180 0 0 230
		"BrightDamagedFg"		"255 0 0 255" // 255 0 0 255

		// weapon selection colors
		"SelectionNumberFg"		"255 255 255 255" // 255 220 0 255
		"SelectionTextFg"		"255 255 255 255" // 255 220 0 255
		"SelectionEmptyBoxBg" 	"32 0 0 128" // 0 0 0 80
		"SelectionBoxBg" 		"0 0 0 80" // 0 0 0 80
		"SelectionSelectedBoxBg" "0 0 0 128" // 0 0 0 80
		
		"ZoomReticleColor"	"0 0 0 1" // 255 220 0 255

		// HL1-style HUD colors
		"Yellowish"			"255 255 255 255" // 255 160 0 255
		"Normal"			"255 255 255 255" // 255 208 64 255
		"Caution"			"255 0 0 255" // 255 48 0 255

		// Top-left corner of the "Half-Life 2" on the main screen
		"Main.Title1.X"		"32" // 90
		"Main.Title1.Y"		"348" // 184
		"Main.Title1.Color"	"255 255 255 255" // 255 255 255 255
		
		// Top-left corner of the "DEATHMATCH" on the main screen
		"Main.Title2.X"		"315"
		"Main.Title2.Y"		"222"
		"Main.Title2.Color"	"255 255 255 180" // 255 255 255 180

		// Top-left corner of the menu on the main screen
		"Main.Menu.X"		"32" // 32
		"Main.Menu.Y"		"396" // 248

		// Blank space to leave beneath the menu on the main screen
		"Main.BottomBorder"	"14" // 12


///HERE
				// vgui_controls color specifications
		Border.Bright					"White"	// LightOrange	// the lit side of a control
		Border.Dark						"White"	// LightOrange	// the dark/unlit side of a control
		Border.Selection				"Blank"				// the additional border color for displaying the default/selected button

		Button.TextColor				"White" // Orange
		Button.BgColor					"Blank" // Blank
		Button.ArmedTextColor			"White" // Orange
		Button.ArmedBgColor				"Black2" // Red
		Button.DepressedTextColor		"White" // Orange
		Button.DepressedBgColor			"Black2" // Red

		CheckButton.TextColor			"White" // Orange
		CheckButton.SelectedTextColor	"White" // Orange
		CheckButton.BgColor				"TransparentBlack" // TransparentBlack
		CheckButton.Border1  			"Border.Dark" // Border.Dark // the left checkbutton border
		CheckButton.Border2  			"Border.Bright"	// Border.Bright // the right checkbutton border
		CheckButton.Check				"White" // Orange // color of the check itself

		ComboBoxButton.ArrowColor		"White" // Orange
		ComboBoxButton.ArmedArrowColor	"White" // Orange
		ComboBoxButton.BgColor			"TransparentBlack" // TransparentBlack
		ComboBoxButton.DisabledBgColor	"Blank" // Blank

		Frame.BgColor					"Blank" // TransparentBlack
		Frame.OutOfFocusBgColor			"Blank" // TransparentBlack
		Frame.FocusTransitionEffectTime	"0.0"	// time it takes for a window to fade in/out on focus/out of focus
		Frame.TransitionEffectTime		"0.0"	// time it takes for a window to fade in/out on open/close
		Frame.AutoSnapRange				"0"
		FrameGrip.Color1				"Blank"
		FrameGrip.Color2				"Blank"
		FrameTitleButton.FgColor		"Blank"
		FrameTitleButton.BgColor		"Blank"
		FrameTitleButton.DisabledFgColor	"Blank"
		FrameTitleButton.DisabledBgColor	"Blank"
		FrameSystemButton.FgColor		"Blank"
		FrameSystemButton.BgColor		"Blank"
		FrameSystemButton.Icon			""
		FrameSystemButton.DisabledIcon	""
		FrameTitleBar.TextColor			"White" // Orange
		FrameTitleBar.BgColor			"Blank"
		FrameTitleBar.DisabledTextColor	"White" // Orange
		FrameTitleBar.DisabledBgColor	"Blank"

		GraphPanel.FgColor				"White" // Orange
		GraphPanel.BgColor				"TransparentBlack" // TransparentBlack

		Label.TextDullColor				"White" // Orange
		Label.TextColor					"255 255 255 255" // Spectators:0  Color
		Label.TextBrightColor			"255 255 255 255" // Server name Color
		Label.SelectedTextColor			"White" // Orange
		Label.BgColor					"Blank"
		Label.DisabledFgColor1			"Blank"
		Label.DisabledFgColor2			"White" // LightOrange

		ListPanel.TextColor					"White" // Orange
		ListPanel.BgColor					"TransparentBlack" // TransparentBlack
		ListPanel.SelectedTextColor			"Black" // Black
		ListPanel.SelectedBgColor			"Red" // Red
		ListPanel.SelectedOutOfFocusBgColor	"Red" // Red
		ListPanel.EmptyListInfoTextColor	"White" // Orange

		Menu.TextColor					"White" // Orange
		Menu.BgColor					"TransparentBlack" // TransparentBlack
		Menu.ArmedTextColor				"White" // Orange
		Menu.ArmedBgColor				"Red" // Red
		Menu.TextInset					"6"

		Chat.TypingText					"White" // Orange

		Panel.FgColor					"White" // OrangeDim
		Panel.BgColor					"blank" // blank

		ProgressBar.FgColor				"White" // Orange
		ProgressBar.BgColor				"TransparentBlack" // TransparentBlack

		PropertySheet.TextColor			"White" // Orange
		PropertySheet.SelectedTextColor	"White" // Orange
		PropertySheet.TransitionEffectTime	"0.25"	// time to change from one tab to another

		RadioButton.TextColor			"White" // Orange
		RadioButton.SelectedTextColor	"White" // Orange

		RichText.TextColor				"White" // Orange
		RichText.BgColor				"Blank" // Blank
		RichText.SelectedTextColor		"White" // Orange
		RichText.SelectedBgColor		"Blank" // Blank

		ScrollBarButton.FgColor				"White" // Orange
		ScrollBarButton.BgColor				"Blank" // Blank
		ScrollBarButton.ArmedFgColor		"White" // Orange
		ScrollBarButton.ArmedBgColor		"Blank" // Blank
		ScrollBarButton.DepressedFgColor	"White" // Orange
		ScrollBarButton.DepressedBgColor	"Blank"// Blank

		ScrollBarSlider.FgColor				"Blank"		// nob color
		ScrollBarSlider.BgColor				"Blank"		// Slider Background Color

		SectionedListPanel.HeaderTextColor	"Red2" // Orange
		SectionedListPanel.HeaderBgColor	"Blank" // Blank
		SectionedListPanel.DividerColor		"Black" // Black
		SectionedListPanel.TextColor		"White" // Orange
		SectionedListPanel.BrightTextColor	"White" // Orange
		SectionedListPanel.BgColor			"ScoreBoard_BgColor"
		SectionedListPanel.SelectedTextColor			"Black" // Black
		SectionedListPanel.SelectedBgColor				"Red2" // Red
		SectionedListPanel.OutOfFocusSelectedTextColor	"Black" // Black
		SectionedListPanel.OutOfFocusSelectedBgColor	"ScoreBoard_NNBgColor" // 255 255 255 32

		Slider.NobColor				"108 108 108 255"
		Slider.TextColor			"127 140 127 255"
		Slider.TrackColor			"31 31 31 255"
		Slider.DisabledTextColor1	"117 117 117 255"
		Slider.DisabledTextColor2	"30 30 30 255"

		TextEntry.TextColor			"White" // Orange
		TextEntry.BgColor			"TransparentBlack" // TransparentBlack
		TextEntry.CursorColor		"White" // Orange
		TextEntry.DisabledTextColor	"White" // Orange
		TextEntry.DisabledBgColor	"Blank" // Blank
		TextEntry.SelectedTextColor	"Black" // Black
		TextEntry.SelectedBgColor	"Red2" // Red
		TextEntry.OutOfFocusSelectedBgColor	"Red2" // Red
		TextEntry.FocusEdgeColor	"TransparentBlack" // TransparentBlack

		ToggleButton.SelectedTextColor	"White" // Orange

		Tooltip.TextColor			"TransparentBlack"
		Tooltip.BgColor				"Red2" // Red

		TreeView.BgColor			"TransparentBlack"

		WizardSubPanel.BgColor		"Blank"

		// scheme-specific colors
		"FgColor"		"White" // Orange
		"BgColor"		"TransparentBlack"

		"ViewportBG"		"Blank"
		"team0"			"204 204 204 255" // Spectators
		"team1"			"255 64 64 255" // CT's
		"team2"			"153 204 255 255" // T's

		"MapDescriptionText"	"25 255 25 255" // Orange // the text used in the map description window
		"CT_Blue"			"153 204 255 255"
		"T_Red"				"255 64 64 255"
		"Hostage_Yellow"	"25 255 25 255" // Panel.FgColor
		"HudIcon_Green"		"0 160 0 255"
		"HudIcon_Red"		"160 0 0 255"

		// CHudMenu
		"ItemColor"		"255 167 42 200"	// default 255 167 42 255
		"MenuColor"		"233 208 173 255"
		"MenuBoxBg"		"0 0 0 100"

		// weapon selection colors
		"SelectionNumberFg"		"255 220 0 200"
		"SelectionTextFg"		"255 220 0 200"
		"SelectionEmptyBoxBg" 	"0 0 0 80"
		"SelectionBoxBg" 		"0 0 0 80"
		"SelectionSelectedBoxBg" "0 0 0 190"

		// Hint message colors
		"HintMessageFg"			"255 255 255 255"
		"HintMessageBg" 		"0 0 0 60"

		"ProgressBarFg"			"255 30 13 255"
	}
	
	//////////////////////// FONTS /////////////////////////////
	//
	// describes all the fonts
	Fonts
	{
		// fonts are used in order that they are listed
		// fonts are used in order that they are listed
		SpecBarPlayerLabel
		{
			"1"
			{
				"name"		"Segoe UI" //Segoe UI
				"tall"		"25"
				"weight"		"500"
				"antialias" 	"1"
				"additive"		"0"
				"outline" 		"1"
				"dropshadow"	"0"
			}
		}
		
		"HalfLife2"
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"40"
				"weight"	"0"
				"additive"	"0"
				"yres"		"1 10000"
				"outline"   "1"
			}			
		}
		"Crosshairs"
		{
			"1"
			{
				"name"		"Crosshair"
				"tall"		"40"
				"weight"	"0"
				"additive"	"0"
				"yres"		"1 10000"
				"outline"   "1"
			}			
		}
		
		
		
		"OutlineDeath"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"10"
				"weight"	"1000"
				"dropshadow" "0"
				"outline"    "1"		
			}
        }
		// fonts are used in order that they are listed
		"DebugFixed"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"14"
				"weight"	"400"
				"antialias" "1"
			}
		}
		// fonts are used in order that they are listed
		"DebugFixedSmall"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"14"
				"weight"	"400"
				"antialias" "1"
			}
		}
		// fonts listed later in the order will only be used if they fulfill a range not already filled
		// if a font fails to load then the subsequent fonts will replace
		"Default"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"12"
				"weight"	"900"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"480 599"
				"dropshadow"	"1"
				"antialias"	"0"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"14"
				"weight"	"900"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"600 767"
				"dropshadow"	"1"
				"antialias"	"0"
			}
			"3"
			{
				"name"		"Verdana"
				"tall"		"16"
				"weight"	"900"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"768 1023"
				"dropshadow"	"1"
				"antialias"	"0"
			}
			"4"
			{
				"name"		"Verdana"
				"tall"		"20"
				"weight"	"900"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"1024 1199"
				"dropshadow"	"1"
				"antialias"	"0"
			}
			"5"
			{
				"name"		"Verdana"
				"tall"		"24"
				"weight"	"900"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"1200 6000"
				"dropshadow"	"1"
				"antialias"	"0"
			}
			"6"
			{
				"name"		"Verdana"
				"tall"		"12"
				"range" 		"0x0000 0x00FF"
				"weight"		"900"
				"dropshadow"	"1"
				"antialias"	"0"
			}
			"7"
			{
				"name"		"Arial"
				"tall"		"12"
				"range" 		"0x0000 0x00FF"
				"weight"		"800"
				"dropshadow"	"1"
				"antialias"	"0"
			}
		}
		"DefaultSmall"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"12"
				"weight"	"0"
				"range"		"0x0000 0x017F"
				"yres"	"480 599"
				"dropshadow"	"1"
				"antialias"	"0"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"14"
				"weight"	"0"
				"range"		"0x0000 0x017F"
				"yres"	"600 767"
				"dropshadow"	"1"
				"antialias"	"0"
			}
			"3"
			{
				"name"		"Verdana"
				"tall"		"16"
				"weight"	"0"
				"range"		"0x0000 0x017F"
				"yres"	"768 1023"
				"dropshadow"	"1"
				"antialias"	"0"
			}
			"4"
			{
				"name"		"Verdana"
				"tall"		"20"
				"weight"	"0"
				"range"		"0x0000 0x017F"
				"yres"	"1024 1199"
				"dropshadow"	"1"
				"antialias"	"0"
			}
			"5"
			{
				"name"		"Verdana"
				"tall"		"24"
				"weight"	"0"
				"range"		"0x0000 0x017F"
				"yres"	"1200 6000"
				"dropshadow"	"1"
				"antialias"	"0"
			}
			"6"
			{
				"name"		"Arial"
				"tall"		"12"
				"range" 		"0x0000 0x00FF"
				"weight"		"0"
				"dropshadow"	"1"
				"antialias"	"0"
			}
		}
		"DefaultVerySmall"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"12"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"480 599"
				"dropshadow"	"1"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"14"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"600 767"
				"dropshadow"	"1"
			}
			"3"
			{
				"name"		"Verdana"
				"tall"		"16"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"768 1023"
				"dropshadow"	"1"
				"antialias"	"0"
			}
			"4"
			{
				"name"		"Verdana"
				"tall"		"20"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"1024 1199"
				"dropshadow"	"1"
				"antialias"	"0"
			}
			"5"
			{
				"name"		"Verdana"
				"tall"		"24"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"1200 6000"
				"dropshadow"	"1"
				"antialias"	"0"
			}
			"6"
			{
				"name"		"Verdana"
				"tall"		"12"
				"range" 		"0x0000 0x00FF"
				"weight"		"0"
				"dropshadow"	"1"
			}
			"7"
			{
				"name"		"Arial"
				"tall"		"11"
				"range" 		"0x0000 0x00FF"
				"weight"		"0"
				"dropshadow"	"1"
			}
		}
		"MenuTitle"
		{
			"1"
			{
				"name"		"Furore"
				"tall"		"18"
				"weight"	"500"
				"custom"    "1"
			}
		}
		WeaponIcons
		{
			"1"
			{
				"name"		"Halflife2"
				"tall"		"36" // 64
				"weight"	"500" // 0
				"antialias" "1"
				"additive"	"0"
				"dropshadow" "1"
				"outline" "0"
				"custom"	"1"
			}
		}
		
		HUDIcons
		{
			"1"
			{
				"name"		"WeaponIcons"
				"tall"		"36" // 64
				"weight"	"500" // 0
				"antialias" "1"
				"additive"	"0"
				"dropshadow" "1"
				"outline" "0"
				"custom"	"1"
			}
		}
		
		SaveIcon
		{
		   "1"
			{
				"name"		"WeaponIcons"
				"tall"		"64" // 64
				"weight"	"600" // 0
				"antialias" "1"
				"additive"	"1"
				"dropshadow" "1"
				"outline" "1"
				"custom"	"1"
				"yres" "1 599"
			}
			"2"
			{
				"name"		"WeaponIcons"
				"tall"		"72" // 64
				"weight"	"600" // 0
				"antialias" "1"
				"additive"	"1"
				"dropshadow" "1"
				"outline" "1"
				"custom"	"1"
				"yres" "600 767"
			}
			"3"
			{
				"name"		"WeaponIcons"
				"tall"		"105" // 64
				"weight"	"800" // 0
				"antialias" "1"
				"additive"	"1"
				"dropshadow" "1"
				"outline" "1"
				"yres" "768 1023"
				"custom"	"1"
			}
		}
		WeaponIconsHUD
		{
			"1"
			{
				"name"		"Halflife2"
				"tall"		"100" // 64
				"weight"	"500" // 0
				"antialias" "1"
				"additive"	"0"
				"dropshadow" "0"
				"outline" "0"
				"custom"	"1"
			}
		}
		WeaponIconsSelected
		{
			"1"
			{
				"name"		"Halflife2"
				"tall"		"36" // 64
				"weight"	"0"
				"antialias" "1"
				"blur"		"5"
				"scanlines"	"2"
				"additive"	"1"
				"custom"	"1"
			}
		}
		QuickInfo
		{
			"1"
			{
				"name"		"HL2cross"
				"tall"		"28" [!$OSX]
				"tall"		"50" [$OSX]
				"weight"	"0"
				"antialias" "1"
				"additive"	"0" // 1
				"custom"	"1" [!$OSX]
			}
		}
		HudNumbers
		{
			"1"
			{
				"name"		"Enchanted Land cyr-lat"
				"tall"		"40" // 30
				"weight"	"500"
				"antialias" "1" // 1
				"additive"	"0" // 1
				"dropshadow" "1"
				"outline" "0"
				"custom"	"1"
			}
		}
		HudNumbersGlow
		{
			"1"
			{
				"name"		"Enchanted Land cyr-lat"
				"tall"		"40" // 30
				"weight"	"500"
				"blur"		"2" // 4
				"scanlines" "0" // 2
				"antialias" "1" // 1
				"dropshadow" "1"
				"additive"	"1" // 1
				"custom"	"1"
			}
		}
		HudNumbers2
		{
			"1"
			{
				"name"		"Enchanted Land cyr-lat"
				"tall"		"27"
				"weight"	"0"
				"antialias" "1" // 1
				"additive"	"0" // 1
				"dropshadow" "1"
				"custom"	"1"
			}
		}
		HudNumbers3
		{
			"1"
			{
				"name"		"Enchanted Land cyr-lat"
				"tall"		"26"
				"weight"	"0"
				"antialias" "1" // 1
				"additive"	"0" // 1
				"dropshadow" "1"
				"custom"	"1"
			}
		}
		HudNumbersSmall
		{
			"1"
			{
				"name"		"Enchanted Land cyr-lat" [!$OSX]

				"tall"		"24" // 16
				"weight"	"1000" // 1000
				"additive"	"0" // 1
				"antialias" "1" // 1
				"dropshadow" "1"
				"outline" "0"
				"custom"	"1"
			}
		}
		HudSelectionNumbers
		{
			"1"
			{
				"name"		"Segoe WP"
				"tall"		"11"
				"weight"	"700"
				"antialias" "1"
				"additive"	"0"
				"dropshadow" "1"
			}
		}
		HudHintTextLarge
		{
			"1"
			{
				"name"		"Segoe WP"
				"tall"		"14"
				"weight"	"1000"
				"antialias" "1"
				"additive"	"1"
			}
		}
		HudHintTextSmall
		{
			"1"
			{
				"name"		"Segoe WP"
				"tall"		"11"
				"weight"	"0"
				"antialias" "1"
				"additive"	"1"
			}
		}
		HudSelectionText
		{
			"1"
			{
				"name"		"Segoe WP"
				"tall"		"8"
				"weight"	"700"
				"antialias" "1"
				"yres"	"1 599"
			}
			"2"
			{
				"name"		"Segoe WP"
				"tall"		"10"
				"weight"	"700"
				"antialias" "1"
				"yres"	"600 767"
			}
			"3"
			{
				"name"		"Segoe WP"
				"tall"		"12"
				"weight"	"900"
				"antialias" "1"
				"yres"	"768 1023"
			}
			"4"
			{
				"name"		"Segoe WP"
				"tall"		"16"
				"weight"	"900"
				"antialias" "1"
				"yres"	"1024 1199"
			}
			"5"
			{
				"name"		"Segoe WP"
				"tall"		"17"
				"weight"	"1000"
				"antialias" "1"
				"yres"	"1200 10000"
			}
		}
		BudgetLabel
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"14"
				"weight"	"400"
				"outline"	"1"
			}
		}
		DebugOverlay
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"14"
				"weight"	"400"
				"outline"	"1"
			}
		}
		"CloseCaption_Normal"
		{
			"1"
			{
				"name"		"Akrobat" [!$OSX]
				"name"		"Akrobat" [$OSX]
				"tall"		"26" [!$OSX]
				"tall"		"24" [$OSX]
				"weight"	"500"
                "outline" "1"
				"antialias" "1"
				
			}
		}
		"CloseCaption_Italic"
		{
			"1"
			{
				"name"		"Akrobat" [!$OSX]
				"name"		"Akrobat" [$OSX]
				"tall"		"26" [!$OSX]
				"tall"		"24" [$OSX]
				"weight"	"500"
				"italic"	"1"
                "outline" "1"
				"antialias" "1"
			}
		}
		"CloseCaption_Bold"
		{
			"1"
			{
				"name"		"Akrobat Bold" [!$OSX]
				"name"		"Akrobat Bold" [$OSX]
				"tall"		"26" [!$OSX]
				"tall"		"24" [$OSX]
				"weight"	"900"
                "outline" "1"
				"antialias" "1"
			}
		}
		"CloseCaption_BoldItalic"
		{
			"1"
			{
				"name"		"Akrobat Bold" [!$OSX]
				"name"		"Akrobat Bold" [$OSX]
				"tall"		"26" [!$OSX]
				"tall"		"24" [$OSX]
				"weight"	"900"
				"italic"	"1"
				"outline" "1"
				"antialias" "1"
			}
		}
		"CloseCaption_Small"
		{
			"1"
			{
				"name"		"Akrobat Light" [!$OSX]
				"name"		"Akrobat Light" [$OSX]
				"tall"		"16" [!$OSX]
				"tall"		"14" [$OSX]
 				"tall_hidef"	"24"
				"weight"	"900"
				"outline" "1"
				"antialias" "1"
			}
		}
		// this is the symbol font
		"Marlett"
		{
			"1"
			{
				"name"		"Marlett"
				"tall"		"14"
				"weight"	"0"
				"symbol"	"1"
			}
		}
		"Trebuchet24"
		{
			"1"
			{
				"name"		"Furore"
				"tall"		"24"
				"weight"	"900"
				"range"		"0x0000 0x007F"	//	Basic Latin
				"antialias" "1"
				"additive"	"1"
			}
		}
		"Trebuchet18"
		{
			"1"
			{
				"name"		"Furore"
				"tall"		"18"
				"weight"	"900"
			}
		}
		ClientTitleFont
		{
			"1"
			{
				"name"  "Enchanted Land cyr-lat"
				"tall"  "46"
				"weight" "0"
				"additive" "0"
				"antialias" "1"
			}
		}
		CreditsLogo
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"128"
				"weight"	"0"
				"antialias" "1"
				"additive"	"1"
				"custom"	"1"
			}
		}
		CreditsText
		{
			"1"
			{
				"name"		"Furore"
				"tall"		"20"
				"weight"	"900"
				"antialias" "1"
				"additive"	"1"
			}
		}
		CreditsOutroLogos
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"48"
				"weight"	"0"
				"antialias" "1"
				"additive"	"1"
				"custom"	"1"
			}
		}
		CreditsOutroText
		{
			"1"
			{
				"name"		"Furore"
				"tall"		"9"
				"weight"	"900"
				"antialias" "1"
			}
		}
		CenterPrintText
		{
			// note that this scales with the screen resolution
			"1"
			{
				"name"		"American Retro" [!$OSX]
				"name"		"American Retro" [$OSX]
				"tall"		"18"
				"weight"	"900"
				"antialias" "1"
				"additive"	"1" // 1
			}
		}
		"ChatFont"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"12"
				"weight"	"700"
				"yres"		"480 599"
				"dropshadow"	"1"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"14"
				"weight"	"700"
				"yres"		"600 767"
				"dropshadow"	"1"
			}
			"3"
			{
				"name"		"Verdana"
				"tall"		"15"
				"weight"	"700"
				"yres"		"768 1023"
				"dropshadow"	"1"
			}
			"4"
			{
				"name"		"Verdana"
				"tall"		"17"
				"weight"	"700"
				"yres"		"1024 1199"
				"dropshadow"	"1"
			}
			"5"
			{
				"name"		"Verdana"
				"tall"		"22"
				"weight"	"700"
				"yres"		"1200 10000"
				"dropshadow"	"1"
			}
		}
		"TargetID"
		{
			"1"
			{
//				"name"		"Trebuchet MS"
//				"tall"		"24"
//				"weight"	"900"
//				"range"		"0x0000 0x007F"	//	Basic Latin
//				"antialias" "1"
//				"additive"	"0"
				"name"		"Georgia"
				"tall"		"12"
				"weight"	"800"
				"yres"	"480 599"
				"dropshadow"	"1"
				"additive"	"0"				
			}
			"2"
			{
				"name"		"Georgia"
				"tall"		"14"
				"weight"	"800"
				"yres"	"600 767"
				"dropshadow"	"1"
				"additive"	"0"				
			}
			"3"
			{
				"name"		"Georgia"
				"tall"		"16"
				"weight"	"800"
				"yres"	"768 1023"
				"dropshadow"	"1"
				"additive"	"0"					
			}
			"4"
			{
				"name"		"Georgia"
				"tall"		"20"
				"weight"	"800"
				"yres"	"1024 1199"
				"dropshadow"	"1"
				"additive"	"0"					
			}
			"5"
			{
				"name"		"Georgia"
				"tall"		"24"
				"weight"	"800"
				"yres"	"1200 10000"
				"dropshadow"	"1"
				"additive"	"0"
			}
		}
		"HL2MPTypeDeath"
		{
		   "1"
		   {
				"name"  "HL2MP" // Icons
				"tall"  "32"
				"weight" "0"
				"additive" "0" // 1
				"antialias" "1"
				"custom" "1" [$OSX]
		   }
		}
		PlayerDeathIcon			// JANEK_0001
		{
		   "1"
		   {
			"name"  "SkullZ" //
			"tall"  "32"
			"weight" "0"
			"additive" "0"
			"antialias" "1"
			"custom" "1" [$OSX]
		   }
		}	
		// Used by scoreboard and spectator UI for names which don't map in the normal fashion
		"DefaultVerySmallFallBack"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"10"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"		"480 599"
				"antialias"	"1"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"12"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"		"600 1199"
				"antialias"	"1"
			}
			"3"
			{
				"name"		"Verdana"
				"tall"		"15"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"		"1200 6000"
				"antialias"	"1"
			}
		}

	}

		//////////////////// BORDERS //////////////////////////////
	//
	// describes all the border types
	Borders
	{
		BaseBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}
		
		TitleButtonBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		TitleButtonDisabledBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "BgColor"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "BgColor"
					"offset" "1 0"
				}
			}
			Top
			{
				"1"
				{
					"color" "BgColor"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "BgColor"
					"offset" "0 0"
				}
			}
		}

		TitleButtonDepressedBorder
		{
			"inset" "1 1 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}

		ScrollBarButtonBorder
		{
			"inset" "1 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		ScrollBarButtonDepressedBorder
		{
			"inset" "2 2 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}
		
		ButtonBorder
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 1"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		FrameBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "ControlBG"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "ControlBG"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "ControlBG"
					"offset" "0 1"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "ControlBG"
					"offset" "0 0"
				}
			}
		}

		TabBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}

		TabActiveBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "ControlBG"
					"offset" "6 2"
				}
			}
		}


		ToolTipBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		// this is the border used for default buttons (the button that gets pressed when you hit enter)
		ButtonKeyFocusBorder
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 1"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		ButtonDepressedBorder
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 1"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		ComboBoxBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}

		MenuBorder
		{
			"inset" "1 1 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}
		BrowserBorder
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}
	}

	
	//////////////////////// CUSTOM FONT FILES /////////////////////////////
	//
	// specifies all the custom (non-system) font files that need to be loaded to service the above described fonts
	CustomFontFiles
	{
		"1"		"resource/HALFLIFE2.ttf"
		"2"		"resource/HL2crosshairs.ttf"
		"3"     
		{
		  "font" "resource/Fonts/SegoeWP-Bold.ttf"
		  "name" "Segoe WP"
		  "russian"
		   {
		     "range" "0x0000 0xFFFF"
		   }
		  "english"
		  {
		     "range" "0x0000 0xFFFF"
		  }
		}
		"4"	"resource/HL2EP2.ttf"		
		"5" 
		{
		  "font" "resource/UIFont.ttf"
		  "name" "Enchanted Land cyr-lat"
		  "russian"
		  {
		    "range" "0x0000 0xFFFF"
		  }
		  "english"
		  {
		    "range" "0x0000 0xFFFF"
		  }
		
		}
		"6" "resource/Fonts/Crosshairs.ttf"
		"7" "resource/fonts/weaponicons.ttf"
		"8" 
		{
		  "font" "resource/fonts/Furore.otf"
		  "name" "Furore"
		  "russian"
		   {
		     "range" "0x0000 0xFFFF"
		   }
		  "english"
		  {
		     "range" "0x0000 0xFFFF"
		  }
		}
		"9" 
		{
		  "font" "resource/fonts/American-Retro.ttf"
		  "name" "American Retro"
		  "russian"
		   {
		     "range" "0x0000 0xFFFF"
		   }
		  "english"
		  {
		     "range" "0x0000 0xFFFF"
		  }
		}
		"10" 
		{
		  "font" "resource/fonts/Akrobat-Light.otf"
		  "name" "Akrobat Light"
		  "russian" 
		  {
		       "range" "0x0000 0xFFFF"
		  }
		  "english"
		  {
		       "range" "0x0000 0xFFFF"
		  }
		}
		
		"11"
		{
		  "font" "resource/fonts/Akrobat-Regular.ttf"
		  "name" "Akrobat"
		  "russian" 
		  {
		       "range" "0x0000 0xFFFF"
		  }
		  "english"
		  {
		       "range" "0x0000 0xFFFF"
		  }
		}
		"12" 
		{
		  "font" "resource/fonts/Akrobat-Bold.ttf"
		  "name" "Akrobat Bold"
		  "russian"
		  {
		     "range" "0x0000 0xFFFF"
		  }
		  "english"
		  {
		    "range" "0x0000 0xFFFF"
		  }
		}
	}

}
