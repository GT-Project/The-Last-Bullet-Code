//========= Copyright © 1996-2005, Valve Corporation, All rights reserved. ============//
//
// Purpose: 
//
//=============================================================================//

#include "cbase.h"
#include "basehlcombatweapon.h"
#include "npcevent.h"
#include "basecombatcharacter.h"
#include "ai_basenpc.h"
#include "player.h"
#include "game.h"
#include "in_buttons.h"
#include "grenade_ar2.h"
#include "ai_memory.h"
#include "soundent.h"
#include "rumble_shared.h"
#include "gamestats.h"

#ifdef CLIENT_DLL
#define CWeaponMinigun C_WeaponMinigun
#endif

// memdbgon must be the last include file in a .cpp file!!!
#include "tier0/memdbgon.h"

//#define SMG1_GRENADE_DAMAGE 100.0f
//#define SMG1_GRENADE_RADIUS 250.0f



class CWeaponMinigun : public CHLMachineGun
{
public:
	DECLARE_CLASS(CWeaponMinigun, CHLMachineGun);

	CWeaponMinigun();

	DECLARE_NETWORKCLASS();
	DECLARE_PREDICTABLE();


	void	Precache(void);
	void	AddViewKick(void);
	void	SecondaryAttack(void);

	int		GetMinBurst() { return 2; }
	int		GetMaxBurst() { return 5; }

	virtual void Equip(CBaseCombatCharacter *pOwner);
	bool	Reload(void);
    bool 		HasIronsights(void) { return false; }
	float	GetFireRate(void) { return 0.05f; }
	Activity	GetPrimaryAttackActivity(void);

	virtual const Vector& GetBulletSpread(void)
	{
		static const Vector cone = VECTOR_CONE_2DEGREES;
		return cone;
	}

	const WeaponProficiencyInfo_t *GetProficiencyValues();


	DECLARE_ACTTABLE();
protected:

	Vector	m_vecTossVelocity;
	float	m_flNextGrenadeCheck;

private:
	CWeaponMinigun(const CWeaponMinigun &);
};

IMPLEMENT_NETWORKCLASS_ALIASED(WeaponMinigun, DT_WeaponMinigun)

BEGIN_NETWORK_TABLE(CWeaponMinigun, DT_WeaponMinigun)
END_NETWORK_TABLE()

BEGIN_PREDICTION_DATA(CWeaponMinigun)
END_PREDICTION_DATA()

LINK_ENTITY_TO_CLASS(weapon_Minigun, CWeaponMinigun);
PRECACHE_WEAPON_REGISTER(weapon_Minigun);


acttable_t	CWeaponMinigun::m_acttable[] =
{
		{ ACT_RANGE_ATTACK1, ACT_RANGE_ATTACK_SMG1, true },
		{ ACT_RELOAD, ACT_RELOAD_SMG1, true },
		{ ACT_IDLE, ACT_IDLE_SMG1, true },
		{ ACT_IDLE_ANGRY, ACT_IDLE_ANGRY_SMG1, true },

		{ ACT_WALK, ACT_WALK_RIFLE, true },
		{ ACT_WALK_AIM, ACT_WALK_AIM_RIFLE, true },

		// Readiness activities (not aiming)
		{ ACT_IDLE_RELAXED, ACT_IDLE_SMG1_RELAXED, false },//never aims
		{ ACT_IDLE_STIMULATED, ACT_IDLE_SMG1_STIMULATED, false },
		{ ACT_IDLE_AGITATED, ACT_IDLE_ANGRY_SMG1, false },//always aims

		{ ACT_WALK_RELAXED, ACT_WALK_RIFLE_RELAXED, false },//never aims
		{ ACT_WALK_STIMULATED, ACT_WALK_RIFLE_STIMULATED, false },
		{ ACT_WALK_AGITATED, ACT_WALK_AIM_RIFLE, false },//always aims

		{ ACT_RUN_RELAXED, ACT_RUN_RIFLE_RELAXED, false },//never aims
		{ ACT_RUN_STIMULATED, ACT_RUN_RIFLE_STIMULATED, false },
		{ ACT_RUN_AGITATED, ACT_RUN_AIM_RIFLE, false },//always aims

		// Readiness activities (aiming)
		{ ACT_IDLE_AIM_RELAXED, ACT_IDLE_SMG1_RELAXED, false },//never aims	
		{ ACT_IDLE_AIM_STIMULATED, ACT_IDLE_AIM_RIFLE_STIMULATED, false },
		{ ACT_IDLE_AIM_AGITATED, ACT_IDLE_ANGRY_SMG1, false },//always aims

		{ ACT_WALK_AIM_RELAXED, ACT_WALK_RIFLE_RELAXED, false },//never aims
		{ ACT_WALK_AIM_STIMULATED, ACT_WALK_AIM_RIFLE_STIMULATED, false },
		{ ACT_WALK_AIM_AGITATED, ACT_WALK_AIM_RIFLE, false },//always aims

		{ ACT_RUN_AIM_RELAXED, ACT_RUN_RIFLE_RELAXED, false },//never aims
		{ ACT_RUN_AIM_STIMULATED, ACT_RUN_AIM_RIFLE_STIMULATED, false },
		{ ACT_RUN_AIM_AGITATED, ACT_RUN_AIM_RIFLE, false },//always aims
		//End readiness activities

		{ ACT_WALK_AIM, ACT_WALK_AIM_RIFLE, true },
		{ ACT_WALK_CROUCH, ACT_WALK_CROUCH_RIFLE, true },
		{ ACT_WALK_CROUCH_AIM, ACT_WALK_CROUCH_AIM_RIFLE, true },
		{ ACT_RUN, ACT_RUN_RIFLE, true },
		{ ACT_RUN_AIM, ACT_RUN_AIM_RIFLE, true },
		{ ACT_RUN_CROUCH, ACT_RUN_CROUCH_RIFLE, true },
		{ ACT_RUN_CROUCH_AIM, ACT_RUN_CROUCH_AIM_RIFLE, true },
		{ ACT_GESTURE_RANGE_ATTACK1, ACT_GESTURE_RANGE_ATTACK_SMG1, true },
		{ ACT_RANGE_ATTACK1_LOW, ACT_RANGE_ATTACK_SMG1_LOW, true },
		{ ACT_COVER_LOW, ACT_COVER_SMG1_LOW, false },
		{ ACT_RANGE_AIM_LOW, ACT_RANGE_AIM_SMG1_LOW, false },
		{ ACT_RELOAD_LOW, ACT_RELOAD_SMG1_LOW, false },
		{ ACT_GESTURE_RELOAD, ACT_GESTURE_RELOAD_SMG1, true },
	};

IMPLEMENT_ACTTABLE(CWeaponMinigun);


//=========================================================
CWeaponMinigun::CWeaponMinigun()
{
	m_fMinRange1 = 0;// No minimum range. 
	m_fMaxRange1 = 1400;
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void CWeaponMinigun::Precache(void)
{
#ifndef CLIENT_DLL
	UTIL_PrecacheOther("grenade_ar2");
#endif

	BaseClass::Precache();
}

//-----------------------------------------------------------------------------
// Purpose: Give this weapon longer range when wielded by an ally NPC.
//-----------------------------------------------------------------------------
void CWeaponMinigun::Equip(CBaseCombatCharacter *pOwner)
{
	m_fMaxRange1 = 1400;

	BaseClass::Equip(pOwner);
}

//-----------------------------------------------------------------------------
// Purpose: 
// Output : Activity
//-----------------------------------------------------------------------------
Activity CWeaponMinigun::GetPrimaryAttackActivity(void)
{
	if (m_nShotsFired < 2)
		return ACT_VM_PRIMARYATTACK;

	if (m_nShotsFired < 3)
		return ACT_VM_RECOIL1;

	if (m_nShotsFired < 4)
		return ACT_VM_RECOIL2;

	return ACT_VM_RECOIL3;
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
bool CWeaponMinigun::Reload(void)
{
	bool fRet;
	float fCacheTime = m_flNextSecondaryAttack;

	fRet = DefaultReload(GetMaxClip1(), GetMaxClip2(), ACT_VM_RELOAD);
	if (fRet)
	{
		// Undo whatever the reload process has done to our secondary
		// attack timer. We allow you to interrupt reloading to fire
		// a grenade.
		m_flNextSecondaryAttack = GetOwner()->m_flNextAttack = fCacheTime;

		WeaponSound(RELOAD);

	}

	return fRet;
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void CWeaponMinigun::AddViewKick(void)
{
#define	EASY_DAMPEN			0.5f
#define	MAX_VERTICAL_KICK	1.0f	//Degrees
#define	SLIDE_LIMIT			2.0f	//Seconds

	//Get the view kick
	CBasePlayer *pPlayer = ToBasePlayer(GetOwner());

	if (pPlayer == NULL)
		return;

	DoMachineGunKick(pPlayer, EASY_DAMPEN, MAX_VERTICAL_KICK, m_fFireDuration, SLIDE_LIMIT);
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void CWeaponMinigun::SecondaryAttack(void)
{
	// Only the player fires this way so we can cast
	CBasePlayer *pPlayer = ToBasePlayer(GetOwner());

	if (pPlayer == NULL)
		return;

	//Must have ammo
	if ((pPlayer->GetAmmoCount(m_iSecondaryAmmoType) <= 0) || (pPlayer->GetWaterLevel() == 3))
	{
		SendWeaponAnim(ACT_VM_DRYFIRE);
		BaseClass::WeaponSound(EMPTY);
		m_flNextSecondaryAttack = gpGlobals->curtime + 0.5f;
		return;
	}

	if (m_bInReload)
		m_bInReload = false;

	// MUST call sound before removing a round from the clip of a CMachineGun
	BaseClass::WeaponSound(WPN_DOUBLE);

	Vector vecSrc = pPlayer->Weapon_ShootPosition();
	Vector	vecThrow;
	// Don't autoaim on grenade tosses
	AngleVectors(pPlayer->EyeAngles() + pPlayer->GetPunchAngle(), &vecThrow);
	VectorScale(vecThrow, 1000.0f, vecThrow);
	/*
	#ifndef CLIENT_DLL
	//Create the grenade
	CGrenadeAR2 *pGrenade = (CGrenadeAR2*)Create( "grenade_ar2", vecSrc, vec3_angle, pPlayer );
	pGrenade->SetAbsVelocity( vecThrow );

	pGrenade->SetLocalAngularVelocity( RandomAngle( -400, 400 ) );
	pGrenade->SetMoveType( MOVETYPE_FLYGRAVITY, MOVECOLLIDE_FLY_BOUNCE );
	pGrenade->SetThrower( GetOwner() );
	pGrenade->SetDamage( SMG1_GRENADE_DAMAGE );
	pGrenade->SetDamageRadius( SMG1_GRENADE_RADIUS );
	#endif
	*/
	SendWeaponAnim(ACT_VM_SECONDARYATTACK);

	// player "shoot" animation
	pPlayer->SetAnimation(PLAYER_ATTACK1);
	//Tony; TODO SECONDARY!


	// Decrease ammo
	pPlayer->RemoveAmmo(1, m_iSecondaryAmmoType);

	// Can shoot again immediately
	m_flNextPrimaryAttack = gpGlobals->curtime + 0.5f;

	// Can blow up after a short delay (so have time to release mouse button)
	m_flNextSecondaryAttack = gpGlobals->curtime + 1.0f;
#ifndef CLIENT_DLL
	// Register a muzzleflash for the AI.
	pPlayer->SetMuzzleFlashTime(gpGlobals->curtime + 0.5);

	CSoundEnt::InsertSound(SOUND_COMBAT, pPlayer->GetAbsOrigin(), SOUNDENT_VOLUME_MACHINEGUN, 0.2, pPlayer);
#endif
}

//-----------------------------------------------------------------------------
const WeaponProficiencyInfo_t *CWeaponMinigun::GetProficiencyValues()
{
	static WeaponProficiencyInfo_t proficiencyTable[] =
	{
		{ 7.0, 0.75 },
		{ 5.00, 0.75 },
		{ 10.0 / 3.0, 0.75 },
		{ 5.0 / 3.0, 0.75 },
		{ 1.00, 1.0 },
	};

	COMPILE_TIME_ASSERT(ARRAYSIZE(proficiencyTable) == WEAPON_PROFICIENCY_PERFECT + 1);

	return proficiencyTable;
}
