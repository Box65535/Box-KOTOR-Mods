// box_testammo

// Written by Box
// Test script for ammo boxes

void main() {
	
	// Properties, we'll create 6 test grenades
	object oUser = OBJECT_SELF;
	int stack = 6;
	string item = "ts_grammo1";
	
	// This is pretty simple
	CreateItemOnObject(item, oUser, stack, 0);
}



