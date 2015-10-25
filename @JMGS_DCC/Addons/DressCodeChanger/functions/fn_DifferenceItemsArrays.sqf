//------------------------------------------
//Dress Code Changer
//
// Name:
//   DressCodeChanger_Fnc_DifferenceItemsArrays
//
// Description:
//   Examining the items missing by comparing the Before and After
//
// Parameters:
//   0 : Before items Arrays1
//   1 : After  items Arrays2
//
// Returns:
//   return the items missing by comparing the Before and After
//------------------------------------------

private ["_items_before", "_items_after"];

_items_before = _this select 0;
_items_after  = _this select 1;

_result      = [];

{
	_found = _items_after find _x;
	if(_found == -1) then {
		_result = _result + [_x];
	}
	else {
		//To keep off Once discovered
		_items_after set [_found,"--@@dummy@@--"];
	};

} forEach _items_before;

_result;
