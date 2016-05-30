// box_turretcontrol

// Turret control script
// Written by Box

#include "box_inc_turret"


void main() {

	object oTurret;
	oTurret = GetFirstObjectInArea(GetArea(OBJECT_SELF), OBJECT_TYPE_CREATURE);

	while(GetIsObjectValid(oTurret)) {
		
		if (Box_CheckTurretCreature(oTurret)) {
			location lTurret = GetLocation(oTurret);
			string trapTag = Box_GetTurretTrapTag(oTurret);
			DestroyObject(oTurret);
			CreateObject(OBJECT_TYPE_ITEM, trapTag, lTurret, TRUE);
			return;
		}
		
		oTurret = GetNextObjectInArea(GetArea(OBJECT_SELF), OBJECT_TYPE_CREATURE);
	}
	
		
	oTurret = GetFirstObjectInArea(GetArea(OBJECT_SELF), OBJECT_TYPE_TRIGGER);

	while(GetIsObjectValid(oTurret)) {
		
		int trapBaseType = GetTrapBaseType(oTurret);
		
		if (Box_CheckTurretTrap(oTurret)) {
			location lTurret = GetLocation(oTurret);
			string turretTag = Box_GetTurretTag(oTurret);
			DestroyObject(oTurret);
			CreateObject(OBJECT_TYPE_CREATURE, turretTag, lTurret, TRUE);
			return;
		}
		
		oTurret = GetNextObjectInArea(GetArea(OBJECT_SELF), OBJECT_TYPE_TRIGGER);
	}
}
