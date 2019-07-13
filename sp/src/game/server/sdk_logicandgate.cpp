#include "cbase.h"

class CLogicAndGate : public CLogicalEntity 
{
	
public:
	DECLARE_CLASS(CLogicAndGate, CLogicalEntity);

	DECLARE_DATADESC();
	CLogicAndGate()
	{
		m_bFirstVal = false;
		m_bSecondVal = false;
	}

	void SetFirstVal(inputdata_t &inputData);
	void SetSecondVal(inputdata_t &inputData);
private:
	bool m_bFirstVal;
	bool m_bSecondVal;

	COutputEvent m_OnAllTrue;
};
LINK_ENTITY_TO_CLASS(sdk_logicandgate, CLogicAndGate);

BEGIN_DATADESC(CLogicAndGate)

DEFINE_FIELD(m_bFirstVal, FIELD_BOOLEAN),
DEFINE_FIELD(m_bSecondVal, FIELD_BOOLEAN),

DEFINE_INPUTFUNC(FIELD_VOID, "SetFirstVal", SetFirstVal),
DEFINE_INPUTFUNC(FIELD_VOID, "SetSecondVal", SetSecondVal),

DEFINE_OUTPUT(m_OnAllTrue, "OnAllTrue"),

END_DATADESC();

void CLogicAndGate::SetFirstVal(inputdata_t &inputData)
{
	m_bFirstVal = true;
	if (m_bFirstVal && m_bSecondVal)
	{
		m_OnAllTrue.FireOutput(inputData.pActivator, this);
	}
};

void CLogicAndGate::SetSecondVal(inputdata_t &inputData)
{
	m_bSecondVal = true;
	if (m_bFirstVal && m_bSecondVal)
	{
		m_OnAllTrue.FireOutput(inputData.pActivator, this);
	}
};
