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
	// color details
	// this is a list of all the colors used by the scheme
	Colors
	{
		// base colors

		"Scheme"				"255 255 255 255" // Scheme Color

		"OffWhite"				"168 168 168 255"
		"DullWhite"				"142 142 142 255"
		"TransparentBlack"				"0 0 0 200"
		"Black"				        "0 0 0 255"

		"Blank"				        "0 0 0 0"
	}

	///////////////////// BASE SETTINGS ////////////////////////
	//
	// default settings for all panels
	// controls use these to determine their settings
	BaseSettings
	{
		// vgui_controls color specifications
		Border.Bright					"255 255 255 32"	// the lit side of a control
		Border.Dark						"5 5 5 64"		// the dark/unlit side of a control
		Border.Selection				"5 5 5 128"			// the additional border color for displaying the default/selected button

		Button.TextColor				"Scheme"
		Button.BgColor					"Blank"
		Button.ArmedTextColor			"Scheme"
		Button.ArmedBgColor				"Blank"
		Button.DepressedTextColor		"Scheme"
		Button.DepressedBgColor			"Blank"
		Button.FocusBorderColor			"Black"
		
		CheckButton.TextColor			"OffWhite"
		CheckButton.SelectedTextColor	"Scheme"
		CheckButton.BgColor				"TransparentBlack"
		CheckButton.Border1  			"10 10 10 128" 		// the left checkbutton border
		CheckButton.Border2  			"Border.Bright"		// the right checkbutton border
		CheckButton.Check				"Scheme"		// color of the check itself
		CheckButton.HighlightFgColor		"OffWhite"
		CheckButton.ArmedBgColor		"Blank"
		CheckButton.DepressedBgColor		"Blank"
		CheckButton.DisabledBgColor	   	"TransparentBlack"

		ComboBoxButton.ArrowColor		"Scheme"
		ComboBoxButton.ArmedArrowColor	"Scheme"
		ComboBoxButton.BgColor			"Blank"
		ComboBoxButton.DisabledBgColor	"Blank"

		Frame.TitleTextInsetX			10
		Frame.ClientInsetX				8
		Frame.ClientInsetY				6
		Frame.BgColor					"5 5 5 200"
		Frame.OutOfFocusBgColor			"0 0 0 64"
		Frame.FocusTransitionEffectTime	"0.3"	// time it takes for a window to fade in/out on focus/out of focus
		Frame.TransitionEffectTime		"0.08"	// time it takes for a window to fade in/out on open/close
		Frame.AutoSnapRange				"1"
		FrameGrip.Color1				"200 200 200 196"
		FrameGrip.Color2				"0 0 0 196"
		FrameTitleButton.FgColor		"200 200 200 196"
		FrameTitleButton.BgColor		"Blank"
		FrameTitleButton.DisabledFgColor	"255 255 255 32"
		FrameTitleButton.DisabledBgColor	"Blank"
		FrameSystemButton.FgColor		"Blank"
		FrameSystemButton.BgColor		"Blank"
		FrameSystemButton.Icon			""
		FrameSystemButton.DisabledIcon	""
		FrameTitleBar.Font				"UiBold"
		FrameTitleBar.TextColor			"Scheme"
		FrameTitleBar.BgColor			"Blank"
		FrameTitleBar.DisabledTextColor	"255 255 255 32"
		FrameTitleBar.DisabledBgColor	"Blank"

		GraphPanel.FgColor				"Scheme"
		GraphPanel.BgColor				"TransparentBlack"

		Label.TextDullColor				"DullWhite"
		Label.TextColor					"DullWhite"
		Label.TextBrightColor			"Scheme"
		Label.SelectedTextColor			"DullWhite"
		Label.BgColor					"Blank"
		Label.DisabledFgColor1			"0 0 0 64"
		Label.DisabledFgColor2			"255 255 255 32"

		ListPanel.TextColor					"OffWhite"
		ListPanel.TextBgColor				"255 255 255 64"
		ListPanel.BgColor					"TransparentBlack"
		ListPanel.SelectedTextColor			"Scheme"
		ListPanel.SelectedBgColor			"255 255 255 64"
		ListPanel.SelectedOutOfFocusBgColor	"255 255 255 32"
		ListPanel.EmptyListInfoTextColor	"OffWhite"

		Menu.TextColor					"Scheme"
		Menu.BgColor					"0 0 0 255"
		Menu.ArmedTextColor				"Scheme"
		Menu.ArmedBgColor				"255 255 255 16"
		Menu.TextInset					"6"

		Panel.FgColor					"DullWhite"
		Panel.BgColor					"Blank"

		ProgressBar.FgColor				"Scheme"
		ProgressBar.BgColor				"TransparentBlack"

		PropertySheet.TextColor			"255 255 255 64"
		PropertySheet.SelectedTextColor	"255 255 255 255"
		PropertySheet.TransitionEffectTime	"0.2"	// time to change from one tab to another

		RadioButton.TextColor			"DullWhite"
		RadioButton.SelectedTextColor	"Scheme"

		RichText.TextColor				"Scheme"
		RichText.BgColor				"TransparentBlack"
		RichText.SelectedTextColor		"Scheme"
		RichText.SelectedBgColor		"255 255 255 64"

		ScrollBar.Wide					20

		ScrollBarButton.FgColor				"Scheme"
		ScrollBarButton.BgColor				"255 255 255 32"
		ScrollBarButton.ArmedFgColor		"Scheme"
		ScrollBarButton.ArmedBgColor		"255 255 255 64"
		ScrollBarButton.DepressedFgColor	"Scheme"
		ScrollBarButton.DepressedBgColor	"255 255 255 128"

		ScrollBarSlider.FgColor				"255 255 255 32"			// nob color
		ScrollBarSlider.BgColor				"255 255 255 16"	// slider background color

		SectionedListPanel.HeaderTextColor	"Scheme"
		SectionedListPanel.HeaderBgColor	"Blank"
		SectionedListPanel.DividerColor		"Black"
		SectionedListPanel.TextColor		"DullWhite"
		SectionedListPanel.BrightTextColor	"Scheme"
		SectionedListPanel.BgColor			"TransparentBlack"
		SectionedListPanel.SelectedTextColor			"255 255 255 128"
		SectionedListPanel.SelectedBgColor				"0 0 0 128"
		SectionedListPanel.OutOfFocusSelectedTextColor	"255 255 255 64"
		SectionedListPanel.OutOfFocusSelectedBgColor	"0 0 0 64"

		Slider.NobColor				"108 108 108 255"
		Slider.TextColor			"180 180 180 255"
		Slider.TrackColor			"0 0 0 255"
		Slider.DisabledTextColor1	"128 128 128 255"
		Slider.DisabledTextColor2	"30 30 30 255"

		TextEntry.TextColor			"Scheme"
		TextEntry.BgColor			"TransparentBlack"
		TextEntry.CursorColor		"Scheme"
		TextEntry.DisabledTextColor	"DullWhite"
		TextEntry.DisabledBgColor	"Blank"
		TextEntry.SelectedTextColor	"Scheme"
		TextEntry.SelectedBgColor	"255 255 255 64"
		TextEntry.OutOfFocusSelectedBgColor	"255 155 0 128"
		TextEntry.FocusEdgeColor	"255 255 255 196"

		ToggleButton.SelectedTextColor	"Scheme"

		Tooltip.TextColor			"Scheme"
		Tooltip.BgColor				"TransparentBlack"

		TreeView.BgColor			"TransparentBlack"

		WizardSubPanel.BgColor		"Blank"

		// scheme-specific colors
		MainMenu.TextColor			"Scheme"
		MainMenu.ArmedTextColor		"255 255 255 100"
		MainMenu.DepressedTextColor	"192 186 80 255"
		MainMenu.MenuItemHeight		"30"
		MainMenu.Inset				"64"
		MainMenu.Backdrop			"0 0 0 156" //was alpha 156

		Console.TextColor			"Scheme"
		Console.DevTextColor		"Scheme"

		NewGame.TextColor			"Scheme"
		NewGame.FillColor			"0 0 0 255"
		NewGame.SelectionColor		"Scheme"
		NewGame.DisabledColor		"128 128 128 196"
	}

	//
	//////////////////////// FONTS /////////////////////////////
	//
	// describes all the fonts
	Fonts
	{
		// fonts are used in order that they are listed
		// fonts listed later in the order will only be used if they fulfill a range not already filled
		// if a font fails to load then the subsequent fonts will replace
		// fonts are used in order that they are listed
		"DebugFixed"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"10"
				"weight"	"500"
				"antialias" "1"
			}
		}
		// fonts are used in order that they are listed
		"DebugFixedSmall"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"7"
				"weight"	"500"
				"antialias" "1"
			}
		}
		"DefaultFixedOutline"
		{
			"1"
			{
				"name"		"Lucida Console"
				"tall"		"10"
				"weight"	"0"
				"dropshadow""0"
				"antialias""1"
				//"additive"	"1"
			}			
			//"1"
			//{
			//	"name"		"Lucida Console"
			//	"tall"		"10"
			//	"weight"	"0"
			//	"outline"	"1"
			//}
		}
		"Default"
		{
			"1"
			{
				"name"		"WerfProFont"
				"tall"		"16"
				"antialias" "1"
				"weight"	"500"
			}
		}
		"DefaultBold"
		{
			"1"
			{
				"name"		"WerfProFont"
				"tall"		"16"
				"antialias" "1"
				"weight"	"1000"
			}
		}
		"DefaultUnderline"
		{
			"1"
			{
				"name"		"WerfProFont"
				"tall"		"16"
				"antialias" "1"
				"weight"	"500"
				"underline" "1"
			}
		}
		"DefaultSmall"
		{
			"1"
			{
				"name"		"WerfProFont"
				"tall"		"12"
				"antialias" "1"
				"weight"	"0"
			}
		}
		"DefaultSmallDropShadow"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"13"
				"antialias" "1"
				"weight"	"0"
				"dropshadow" "1"
			}
		}
		"DefaultVerySmall"
		{
			"1"
			{
				"name"		"WerfProFont"
				"tall"		"12"
				"antialias" "1"
				"weight"	"0"
			}
		}

		"DefaultLarge"
		{
			"1"
			{
				"name"		"WerfProFont"
				"tall"		"18"
				"antialias" "1"
				"weight"	"0"
			}
		}
		"UiBold"
		{
			"1"
			{
				"name"		"Furore"
				"tall"		"20"
				"weight"	"400"
				"antialias" "1"
				"dropshadow"	"1"
				//"name"		"Arial"
				//"tall"		"12"
				//"weight"	"1000"
			}
		}
		"MenuLarge"
		{
			"1"
			{
				"name"		"Furore"
				"tall"		"35"
				"weight"	"400"
				"antialias" "1"
				"dropshadow" "1"
			}
		}

		"ConsoleText"
		{
			"1"
			{
				"name"		"WerfProFont"
				"tall"		"13"
				"weight"	"500"
				"dropshadow""1"
				"antialias""1"
				"custom" "1"
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
				"tall"		"34"
				"weight"	"400"
				"antialias"	"1"
				"additive"	"0"
				"dropshadow""1"
			}
		}


		"Trebuchet20"
		{
			"1"
			{
				"name"		"Furore"
				"tall"		"30"
				"weight"	"900"
				"antialias"	"1"
				"dropshadow""1"
			}
		}

		"Trebuchet18"
		{
			"1"
			{
				"name"		"Furore"
				"tall"		"28"
				"weight"	"900"
				"antialias"	"1"
				"dropshadow""1"
			}
		}

		// HUD numbers
		// We use multiple fonts to 'pulse' them in the HUD, hence the need for many of near size
		"HUDNumber"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"40"
				"weight"	"900"
				
			}
		}
		"HUDNumber1"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"41"
				"weight"	"900"
			}
		}
		"HUDNumber2"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"42"
				"weight"	"900"
			}
		}
		"HUDNumber3"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"43"
				"weight"	"900"
			}
		}
		"HUDNumber4"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"44"
				"weight"	"900"
			}
		}
		"HUDNumber5"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"45"
				"weight"	"900"
			}
		}
		"DefaultFixed"
		{
			"1"
			{
				"name"		"Lucida Console"
				"tall"		"10"
				"weight"	"0"
			}
//			"1"
//			{
//				"name"		"FixedSys"
//				"tall"		"20"
//				"weight"	"0"
//			}
		}

		"DefaultFixedDropShadow"
		{
			"1"
			{
				"name"		"Lucida Console"
				"tall"		"10"
				"weight"	"0"
				"dropshadow" "1"
			}
//			"1"
//			{
//				"name"		"FixedSys"
//				"tall"		"20"
//				"weight"	"0"
//			}
		}

		"CloseCaption_Normal"
		{
			"1"
			{
				"name"		"Gotham Pro"
				"tall"		"16"
				"weight"	"500"
			}
		}
		"CloseCaption_Italic"
		{
			"1"
			{
				"name"		"Gotham Pro"
				"tall"		"16"
				"weight"	"500"
				"italic"	"1"
			}
		}
		"CloseCaption_Bold"
		{
			"1"
			{
				"name"		"Gotham Pro"
				"tall"		"16"
				"weight"	"900"
			}
		}
		"CloseCaption_BoldItalic"
		{
			"1"
			{
				"name"		"Gotham Pro"
				"tall"		"16"
				"weight"	"900"
				"italic"	"1"
			}
		}

		TitleFont
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"72"
				"weight"	"400"
				"antialias"	"1"
				"custom"	"1"
			}
		}

		TitleFont2
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"120"
				"weight"	"400"
				"antialias"	"1"
				"custom"	"1"
			}
		}
	}
	//
	//////////////////// BORDERS //////////////////////////////
	//
	// describes all the border types
	Borders
	{
		BaseBorder		DepressedBorder
		ButtonBorder	RaisedBorder
		ComboBoxBorder	DepressedBorder
		MenuBorder		RaisedBorder
		BrowserBorder	DepressedBorder
		PropertySheetBorder	RaisedBorder
		
		PanelBorder
		{
			// rounded corners for frames
			"backgroundtype" "0"
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
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
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
		EditablePanelBorder
		{
			// rounded corners for frames
			"backgroundtype" "0"
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
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
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
			// rounded corners for frames
			"backgroundtype" "0"
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
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
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

		DepressedBorder
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
		RaisedBorder
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
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
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
		
		TitleButtonBorder
		{
			"backgroundtype" "0"
		}

		TitleButtonDisabledBorder
		{
			"backgroundtype" "0"
		}

		TitleButtonDepressedBorder
		{
			"backgroundtype" "0"
		}

		ScrollBarButtonBorder
		{
			"inset" "2 2 0 0"
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
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}
			Top
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}
			Right
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}
			Bottom
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		ButtonDepressedBorder
		{
			"inset" "2 1 1 1"
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
	}

	//////////////////////// CUSTOM FONT FILES /////////////////////////////
	//
	// specifies all the custom (non-system) font files that need to be loaded to service the above described fonts
	CustomFontFiles
	{
		"1"		"resource/HALFLIFE2.ttf"
		"2"	
		{
		  "font"  "resource/Fonts/ProFontWindows.ttf"
		  "name"   "WerfProFont"
		  "russian"
		  {
		    "range" "0x0000 0xFFFF"
		  }
		  "english"
		  {
		    "range" "0x0000 0xFFFF"
		  }
		}
		  
		"3"	
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
	}
}