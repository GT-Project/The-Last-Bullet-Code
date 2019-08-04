//=======TLBR Achievements========
//(C) GT-Projects 2019-2019
//=========Alivebyte! was here====
#include "cbase.h"
#ifdef GAME_DLL
#include "baseachievement.h"
#include "achievementmgr.h"



#define DECLARE_TLBR_MAP_EVENT_ACHIEVEMENT( achievementID, achievementName, iPointValue )					\
	DECLARE_MAP_EVENT_ACHIEVEMENT_( achievementID, achievementName, "TLBR", iPointValue, false )

DECLARE_TLBR_MAP_EVENT_ACHIEVEMENT(ACHIEVEMENT_TLBR_ZLOV, "EP1_BEAT_GAME", 5)
#endif