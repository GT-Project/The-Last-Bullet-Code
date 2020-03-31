"GameMenu"
{
	"1"
	{
		"label" "#GameUI_GameMenu_ResumeGame"
		"command" "ResumeGame"
		"InGameOrder" "10"
		"OnlyInGame" "1"
	}
	"2"	
	{
		"label" "#GameUI_GameMenu_NewGame"
		"command" "OpenNewGameDialog"
		"InGameOrder" "40"
		"notmulti" "1"
	}
	"3"
	{
		"label" "#GameUI_GameMenu_LoadGame"
		"command" "OpenLoadGameDialog"
		"InGameOrder" "30"
		"notmulti" "1"
	}
	"4"
	{
		"label" "#GameUI_GameMenu_SaveGame"
		"command" "OpenSaveGameDialog"
		"InGameOrder" "20"
		"notmulti" "1"
		"OnlyInGame" "1"
	}
	// "5"
	// {
	  // "label" "#GameUI_GameMenu_BonusMaps"
	  // "command" "OpenBonusMapsDialog"
	  // "InGameOrder" "30"
	  // "notmulti" "1"
	// }
	// "6"
	// {
	    // "label" "#GameUI_GameMenu_Achievements"
		// "command" "OpenAchievementsDialog"
		// "InGameOrder" "30"
	// }
	"5"
	{
	  "label" "#GameUI_LoadCommentary"
	  "command" "OpenLoadSingleplayerCommentaryDialog"
	  "InGameOrder" "50"
	  "notmulti" "1"
	}
	"6"
	{
		"label" "#GameUI_GameMenu_Options"
		"command" "OpenOptionsDialog"
		"InGameOrder" "70"
	}
	"7"
	{
		"label" "#GameUI_GameMenu_Quit"
		"command" "Quit"
		"InGameOrder" "80"
	}
}

