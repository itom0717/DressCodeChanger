//------------------------------------------
//Dress Code Changer
//
// Name:
//   DressCodeChanger_Fnc_AddActionMenu
//
// Description:
//   And register the initial setting menu to action menu
//
// Parameters:
//  Nothing
//
// Returns:
//   Nothing
//------------------------------------------

#include "\userconfig\DressCodeChanger\setting.hpp"

[] spawn {


	if(MENU_DISP_FLAG == 2 || MENU_DISP_FLAG == 3) then
	{
		_flags = nearestObjects [player, IS_DISP_MENU_FLAG, 100];
		{
			if((typeOf player) in IS_DISP_SAVE_MENU) then
			{
				_x addAction [ MENU_TEXT_SAVE, {call DressCodeChanger_Fnc_SaveDressCode}, "", -100, false, true];
			};
			_x addAction [ MENU_TEXT_LOAD, {call DressCodeChanger_Fnc_LoadDressCode}, "", -101, false, true];
		} forEach _flags;
	};


	if(MENU_DISP_FLAG == 1 || MENU_DISP_FLAG == 3) then
	{
		if((typeOf player) in IS_DISP_SAVE_MENU) then
		{
			player addAction [ MENU_TEXT_SAVE, {call DressCodeChanger_Fnc_SaveDressCode}, "", -102, false, true];
		};
		player addAction [ MENU_TEXT_LOAD, {call DressCodeChanger_Fnc_LoadDressCode}, "", -103, false, true];

	};

};
