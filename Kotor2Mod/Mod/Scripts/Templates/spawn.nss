// #FILENAME

// Written by Box
// #DESCRIPTION

#include "#MODULE_INCLUDE"

void main() {
	
	// Spawn Script
	ExecuteScript("#CHILD_SCRIPT", OBJECT_SELF);
	
	// Equipment
	#FUNCTION_CALL(OBJECT_SELF);
}



