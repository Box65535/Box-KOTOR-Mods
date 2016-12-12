// box_inc_array

// Written by Box
// Include file for arrays

// Fixed max size of 30
struct Box_Array {
	
	int size;
	object o0;
	object o1;
	object o2;
	object o3;
	object o4;
	object o5;
	object o6;
	object o7;
	object o8;
	object o9;
	object o10;
	object o11;
	object o12;
	object o13;
	object o14;
	object o15;
	object o16;
	object o17;
	object o18;
	object o19;
	object o20;
	object o21;
	object o22;
	object o23;
	object o24;
	object o25;
	object o26;
	object o27;
	object o28;
	object o29;
};

struct Box_Array Box_CreateArray() {
	
	struct Box_Array aArray;
	
	aArray.size = 0;
	aArray.o0 = OBJECT_INVALID;
	aArray.o1 = OBJECT_INVALID;
	aArray.o2 = OBJECT_INVALID;
	aArray.o3 = OBJECT_INVALID;
	aArray.o4 = OBJECT_INVALID;
	aArray.o5 = OBJECT_INVALID;
	aArray.o6 = OBJECT_INVALID;
	aArray.o7 = OBJECT_INVALID;
	aArray.o8 = OBJECT_INVALID;
	aArray.o9 = OBJECT_INVALID;
	aArray.o10 = OBJECT_INVALID;
	aArray.o11 = OBJECT_INVALID;
	aArray.o12 = OBJECT_INVALID;
	aArray.o13 = OBJECT_INVALID;
	aArray.o14 = OBJECT_INVALID;
	aArray.o15 = OBJECT_INVALID;
	aArray.o16 = OBJECT_INVALID;
	aArray.o17 = OBJECT_INVALID;
	aArray.o18 = OBJECT_INVALID;
	aArray.o19 = OBJECT_INVALID;
	aArray.o20 = OBJECT_INVALID;
	aArray.o21 = OBJECT_INVALID;
	aArray.o22 = OBJECT_INVALID;
	aArray.o23 = OBJECT_INVALID;
	aArray.o24 = OBJECT_INVALID;
	aArray.o25 = OBJECT_INVALID;
	aArray.o26 = OBJECT_INVALID;
	aArray.o27 = OBJECT_INVALID;
	aArray.o28 = OBJECT_INVALID;
	aArray.o29 = OBJECT_INVALID;
	
	return aArray;
}

struct Box_Array Box_ArrayPut(struct Box_Array aArray, object element, int index) {
	
	if (index == 0)
		aArray.o0 = element;
	else if (index == 1)
		aArray.o1 = element;
	else if (index == 2)
		aArray.o2 = element;
	else if (index == 3)
		aArray.o3 = element;
	else if (index == 4)
		aArray.o4 = element;
	else if (index == 5)
		aArray.o5 = element;
	else if (index == 6)
		aArray.o6 = element;
	else if (index == 7)
		aArray.o7 = element;
	else if (index == 8)
		aArray.o8 = element;
	else if (index == 9)
		aArray.o9 = element;
	else if (index == 10)
		aArray.o10 = element;
	else if (index == 11)
		aArray.o11 = element;
	else if (index == 12)
		aArray.o12 = element;
	else if (index == 13)
		aArray.o13 = element;
	else if (index == 14)
		aArray.o14 = element;
	else if (index == 15)
		aArray.o15 = element;
	else if (index == 16)
		aArray.o16 = element;
	else if (index == 17)
		aArray.o17 = element;
	else if (index == 18)
		aArray.o18 = element;
	else if (index == 19)
		aArray.o19 = element;
	else if (index == 20)
		aArray.o20 = element;
	else if (index == 21)
		aArray.o21 = element;
	else if (index == 22)
		aArray.o22 = element;
	else if (index == 23)
		aArray.o23 = element;
	else if (index == 24)
		aArray.o24 = element;
	else if (index == 25)
		aArray.o25 = element;
	else if (index == 26)
		aArray.o26 = element;
	else if (index == 27)
		aArray.o27 = element;
	else if (index == 28)
		aArray.o28 = element;
	else if (index == 29)
		aArray.o29 = element;
	
	return aArray;
}

struct Box_Array Box_ArrayAppend(struct Box_Array aArray, object element) {
	
	if (aArray.size < 30) {
		aArray = Box_ArrayPut(aArray, element, aArray.size);
		aArray.size = aArray.size + 1;
	}
	
	return aArray;
}

int Box_ArraySize(struct Box_Array aArray) {
	
	return aArray.size;
}

object Box_ArrayGet(struct Box_Array aArray, int index) {
	
	if (index == 0)
		return aArray.o0;
	else if (index == 1)
		return aArray.o1;
	else if (index == 2)
		return aArray.o2;
	else if (index == 3)
		return aArray.o3;
	else if (index == 4)
		return aArray.o4;
	else if (index == 5)
		return aArray.o5;
	else if (index == 6)
		return aArray.o6;
	else if (index == 7)
		return aArray.o7;
	else if (index == 8)
		return aArray.o8;
	else if (index == 9)
		return aArray.o9;
	else if (index == 10)
		return aArray.o10;
	else if (index == 11)
		return aArray.o11;
	else if (index == 12)
		return aArray.o12;
	else if (index == 13)
		return aArray.o13;
	else if (index == 14)
		return aArray.o14;
	else if (index == 15)
		return aArray.o15;
	else if (index == 16)
		return aArray.o16;
	else if (index == 17)
		return aArray.o17;
	else if (index == 18)
		return aArray.o18;
	else if (index == 19)
		return aArray.o19;
	else if (index == 20)
		return aArray.o20;
	else if (index == 21)
		return aArray.o21;
	else if (index == 22)
		return aArray.o22;
	else if (index == 23)
		return aArray.o23;
	else if (index == 24)
		return aArray.o24;
	else if (index == 25)
		return aArray.o25;
	else if (index == 26)
		return aArray.o26;
	else if (index == 27)
		return aArray.o27;
	else if (index == 28)
		return aArray.o28;
	else if (index == 29)
		return aArray.o29;
	else
		return OBJECT_INVALID;
}