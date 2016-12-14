// This makes the PC one of the Jedi classes, depending on parameter.
// Param Count = 1, decides which class to make him or her.
// 0 = Weaponmaster
// 1 = Watchman
// 2 = Jedi Master
// 3 = Marauder
// 4 = Sith Assassin
// 5 = Sith Lord
// CFA 10-6-04

// Modified by Box
#include "box_inc"

void main()
{
	// Box - Changed class values to Prestige class(es)
	
    // Grab the Parameter.
    int nScriptNumber = GetScriptParameter( 1 );

    // If Param = 0, then make him a Jedi Weaponmaster.
    if ( nScriptNumber == 0 ) {
        AddMultiClass (CLASS_JEDI_PRESTIGE_GUARDIAN, GetFirstPC () );
    }

    // If Param = 1, then make him a Jedi Watchman.
    if ( nScriptNumber == 1 ) {
        AddMultiClass (CLASS_JEDI_PRESTIGE_SENTINEL, GetFirstPC () );
    }

    // If Param = 2, then make him a Jedi Master.
    if ( nScriptNumber == 2 ) {
        AddMultiClass (CLASS_JEDI_PRESTIGE_CONSULAR, GetFirstPC () );
    }

    // If Param = 3, then make him a Sith Marauder.
    if ( nScriptNumber == 3 ) {
        AddMultiClass (CLASS_JEDI_PRESTIGE_GUARDIAN, GetFirstPC () );
    }

    // If Param = 4, then make him a Sith Assassin.
    if ( nScriptNumber == 4 ) {
        AddMultiClass (CLASS_JEDI_PRESTIGE_SENTINEL, GetFirstPC () );
    }

    // If Param = 5, then make him a Sith Lord.
    if ( nScriptNumber == 5 ) {
        AddMultiClass (CLASS_JEDI_PRESTIGE_CONSULAR, GetFirstPC () );
    }

}
