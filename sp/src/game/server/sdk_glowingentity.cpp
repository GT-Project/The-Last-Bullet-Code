#include "cbase.h"

class CGlowingEntity : public CBaseAnimating
{
	
public:

	DECLARE_CLASS(CGlowingEntity, CBaseAnimating);
	DECLARE_DATADESC();

	void Precache(void);
	void Spawn(void);



};

LINK_ENTITY_TO_CLASS(sdk_glowingentity, CGlowingEntity);

BEGIN_DATADESC(CGlowingEntity)

END_DATADESC()


void CGlowingEntity::Precache()
{

	PrecacheModel("models/props/cs_office/coffee_mug.mdl");
	BaseClass::Precache();
}

void CGlowingEntity::Spawn()
{
	Precache();

	SetModel("models/props/cs_office/coffee_mug.mdl");
	SetSolid(SOLID_VPHYSICS);
	AddGlowEffect();
}

