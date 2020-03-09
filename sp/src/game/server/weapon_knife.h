//========= Copyright Valve Corporation, All rights reserved. ============//
//
// Purpose:
//
//=============================================================================//

#ifndef WEAPON_KNIFE_H
#define WEAPON_KNIFE_H

#include "basebludgeonweapon.h"

#if defined( _WIN32 )
#pragma once
#endif

#ifdef HL2MP
#error weapon_knife.h must not be included in hl2mp. The windows compiler will use the wrong class elsewhere if it is.
#endif

#define	KNIFE_RANGE	75.0f
#define	KNIFE_REFIRE	0.6f

//-----------------------------------------------------------------------------
// CWeaponKnife
//-----------------------------------------------------------------------------

class CWeaponKnife : public CBaseHLBludgeonWeapon
{
public:
	DECLARE_CLASS(CWeaponKnife, CBaseHLBludgeonWeapon);

	DECLARE_SERVERCLASS();
	DECLARE_ACTTABLE();

	CWeaponKnife();

	float		GetRange(void)		{ return	KNIFE_RANGE; }
	float		GetFireRate(void)		{ return	KNIFE_REFIRE; }

	void		AddViewKick(void);
	float		GetDamageForActivity(Activity hitActivity);

	virtual int WeaponMeleeAttack1Condition(float flDot, float flDist);
	void		SecondaryAttack(void)	{ return; };
	virtual bool HasIronsights(void) { return false; };

	// Animation event
	virtual void Operator_HandleAnimEvent(animevent_t *pEvent, CBaseCombatCharacter *pOperator);

private:
	// Animation event handlers
	void HandleAnimEventMeleeHit(animevent_t *pEvent, CBaseCombatCharacter *pOperator);
};

#endif // WEAPON_CROWBAR_H
