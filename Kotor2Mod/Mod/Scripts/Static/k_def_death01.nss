//:: k_def_death01
/*
    Default On Death Script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_switch"
#include "k_inc_debug"
#include "box_inc"

void main()
{
	Box_RemoveAllItems(OBJECT_SELF);
	ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_DEATH);
}
