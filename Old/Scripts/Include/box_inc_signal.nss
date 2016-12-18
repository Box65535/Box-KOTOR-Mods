// box_inc_signal

// Written by Box
// Include file for signalling things

//
void Box_SignalSpellFailed(object oUser, string name) {
	
}

//
void Box_SignalSpellImmune(object oTarget, string name) {
	DisplayFeedBackText(oTarget, 1);
}

//
void Box_SignalSpellSaved(object oTarget, string name) {
	DisplayFeedBackText(oTarget, 2);
}

//
void Box_SignalSpellHit(object oTarget, string name) {
	// TODO
}

void Box_SignalSpellFriendly(object oTarget, string name) {
	
}