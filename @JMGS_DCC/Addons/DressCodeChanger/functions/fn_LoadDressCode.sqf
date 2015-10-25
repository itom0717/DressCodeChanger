//------------------------------------------
//Dress Code Changer
//
// Name:
//   DressCodeChanger_Fnc_LoadDressCode
//
// Description:
//   Load dress code
//
// Parameters:
//  Nothing
//
// Returns:
//   Nothing
//------------------------------------------

#include "\userconfig\DressCodeChanger\setting.hpp"


[] spawn {

	private ["_message","_items_before","_items_after","_items_difference"];

	//Variable Synchronism server
	publicVariable "DressCodeChanger_IsSave";
	publicVariable "DressCodeChanger_Uniform";
	publicVariable "DressCodeChanger_Vest";
	publicVariable "DressCodeChanger_Backpack";
	publicVariable "DressCodeChanger_Headgear";
	sleep 0.5;

	_message = "ドレスコードの指定はありません。";

	if (!isNil "DressCodeChanger_IsSave") then
	{
		if (DressCodeChanger_IsSave=="1") then
		{
			_message = "";

			//--------------------------------------
			//Uniform change
			if (CHANGE_UNIFORM == 1) then
			{
				if (!isNil {DressCodeChanger_Uniform}) then
				{
					if (DressCodeChanger_Uniform != "") then
					{
						if (DressCodeChanger_Uniform != uniform player) then
						{

							_message = _message + "Uniform" + "<br/>";
							_message = _message + getText(configFile >> "CfgWeapons"  >> (uniform player) >> "displayName") + "<br/>";
							_message = _message + "↓" + "<br/>";
							_message = _message + getText(configFile >> "CfgWeapons"  >> DressCodeChanger_Uniform >> "displayName") + "<br/>";
							_message = _message + "<br/>";

							//backup items
							_items_before = items player; 
							_items_before = _items_before + (magazines player);

							//change uniform (items disappear all) 
							player addUniform DressCodeChanger_Uniform;

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
					};
				};
			};
			//--------------------------------------


			//--------------------------------------
			//Vest change
			if (CHANGE_VEST == 1) then
			{
				if (!isNil {DressCodeChanger_Vest}) then
				{
					if (DressCodeChanger_Vest != "") then
					{
						if (DressCodeChanger_Vest != vest player) then
						{

							_message = _message + "Vest" + "<br/>";
							_message = _message + getText(configFile >> "CfgWeapons"  >> (vest player) >> "displayName") + "<br/>";
							_message = _message + "↓" + "<br/>";
							_message = _message + getText(configFile >> "CfgWeapons"  >> DressCodeChanger_Vest >> "displayName") + "<br/>";
							_message = _message + "<br/>";

							//backup items
							_items_before = items player; 
							_items_before = _items_before + (magazines player);

							//change Vest (items disappear all) 
							player addVest DressCodeChanger_Vest;

							//now items
							_items_after = items player; 
							_items_after = _items_after + (magazines player);

							//difference
							_items_difference     = ([_items_before,_items_after] call DressCodeChanger_Fnc_DifferenceItemsArrays);

							//restore items
							{
								player addItemToVest _x;
							} forEach _items_difference;
							

						};
					};
				};
			};
			//--------------------------------------

			//--------------------------------------
			//Backpack change
			if (CHANGE_BACKPACK == 1) then
			{
				if (!isNil {DressCodeChanger_Backpack}) then
				{
					if (DressCodeChanger_Backpack != "") then
					{
						if (DressCodeChanger_Backpack != backpack player) then
						{

							_message = _message + "Backpack" + "<br/>";
							_message = _message + getText(configFile >> "CfgVehicles"  >> (backpack player) >> "displayName") + "<br/>";
							_message = _message + "↓" + "<br/>";
							_message = _message + getText(configFile >> "CfgVehicles"  >> DressCodeChanger_Backpack >> "displayName") + "<br/>";
							_message = _message + "<br/>";

							//backup items
							_items_before = items player; 
							_items_before = _items_before + (magazines player);

							//change Backpack (items disappear all) 
							clearAllItemsFromBackpack player;
							removeBackpack player;
							player addBackpack  DressCodeChanger_Backpack;

							//now items
							_items_after = items player; 
							_items_after = _items_after + (magazines player);

							//difference
							_items_difference     = ([_items_before,_items_after] call DressCodeChanger_Fnc_DifferenceItemsArrays);

							//restore items
							{
								player addItemToBackpack _x;
							} forEach _items_difference;
							

						};
					};
				};
			};
			//--------------------------------------

			//--------------------------------------
			//Headgear change
			if (CHANGE_HEADGEAR == 1) then
			{
				if (!isNil {DressCodeChanger_Headgear}) then
				{
					if (DressCodeChanger_Headgear != "") then
					{
						if (DressCodeChanger_Headgear != headgear player) then
						{

							_message = _message + "Headgear" + "<br/>";
							_message = _message + getText(configFile >> "CfgWeapons"  >> (headgear player) >> "displayName") + "<br/>";
							_message = _message + "↓" + "<br/>";
							_message = _message + getText(configFile >> "CfgWeapons"  >> DressCodeChanger_Headgear >> "displayName") + "<br/>";
							_message = _message + "<br/>";

							//change Headgear
							player addHeadgear DressCodeChanger_Headgear;

						};
					};
				};
			};
			//--------------------------------------

			if(_message != "") then
			{
				_message = _message + "ドレスコードを変更しました。";
			}
			else
			{
				_message = "ドレスコードの変更の変更は必要ありません。";
			}

		};
	};


	hintSilent parseText _message;
};
