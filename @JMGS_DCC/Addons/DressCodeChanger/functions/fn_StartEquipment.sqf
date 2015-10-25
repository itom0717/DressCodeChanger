//------------------------------------------
//Dress Code Changer
//
// Name:
//   DressCodeChanger_Fnc_StartEquipment
//
// Description:
//   Change at the start of equipment
//
// Parameters:
//  Nothing
//
// Returns:
//   Nothing
//------------------------------------------

#include "\userconfig\DressCodeChanger\setting.hpp"

private ["_items_before","_items_after","_items_difference"];




//removeAllItems
if(REMOVE_ALL_ITEMS == 1) then
{
	removeAllItems player;
	{
		player removeMagazines _x;
	} forEach magazines player;
};


//---------------------------------------------
if(INIT_UNIFORM != "") then
{
	//backup items
	_items_before = items player; 
	_items_before = _items_before + (magazines player);

	player addUniform INIT_UNIFORM;

	//now items
	_items_after = items player; 
	_items_after = _items_after + (magazines player);

	//difference
	_items_difference = ([_items_before,_items_after] call DressCodeChanger_Fnc_DifferenceItemsArrays);

	//restore items
	{
		player addItemToUniform _x;
	} forEach _items_difference;
};
//---------------------------------------------
if(INIT_VEST != "") then
{
	//backup items
	_items_before = items player; 
	_items_before = _items_before + (magazines player);

	player addVest INIT_VEST;

	//now items
	_items_after = items player; 
	_items_after = _items_after + (magazines player);

	//difference
	_items_difference = ([_items_before,_items_after] call DressCodeChanger_Fnc_DifferenceItemsArrays);

	//restore items
	{
		player addItemToVest _x;
	} forEach _items_difference;
};
//---------------------------------------------
if(INIT_BACKPACK != "") then
{
	//backup items
	_items_before = items player; 
	_items_before = _items_before + (magazines player);

	clearAllItemsFromBackpack player;
	removeBackpack player;
	player addBackpack INIT_BACKPACK;

	//now items
	_items_after = items player; 
	_items_after = _items_after + (magazines player);

	//difference
	_items_difference = ([_items_before,_items_after] call DressCodeChanger_Fnc_DifferenceItemsArrays);

	//restore items
	{
		player addItemToBackpack _x;
	} forEach _items_difference;
};
//---------------------------------------------
if(INIT_HEADGEAR != "") then
{
	player addHeadgear INIT_HEADGEAR;
};
//---------------------------------------------



//---------------------------------------------
//AddItems
if((typeOf player) in MEDIC_CALSSNAME) then
{

	//medic items
	{
		_class = _x select 0; 
		_qty   = _x select 1; 
		for "_i" from 1 to _qty do 
		{
			player addItemToBackpack _class;
		}
	} forEach INIT_ITEMS_MEDIC;

}
else
{

	//non medic items
	{
		_class = _x select 0; 
		_qty   = _x select 1; 
		for "_i" from 1 to _qty do 
		{
			player addItemToBackpack _class;
		}
	} forEach INIT_ITEMS;

};
//---------------------------------------------

