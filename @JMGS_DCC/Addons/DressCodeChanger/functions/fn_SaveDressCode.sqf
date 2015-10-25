//------------------------------------------
//Dress Code Changer
//
// Name:
//   DressCodeChanger_Fnc_SaveDressCode
//
// Description:
//   Save dress code
//
// Parameters:
//  Nothing
//
// Returns:
//   Nothing
//------------------------------------------

#include "\userconfig\DressCodeChanger\setting.hpp"

[] spawn
{

	private ["_uniform", "_headgear", "_vest", "_backpack", "_uniform_name", "_headgear_name", "_vest_name", "_backpack_name", "_ypos", "_xpos"];

	//Get Player Uniforms
	_uniform   = uniform  player;
	_headgear  = headgear player;
	_backpack  = backpack player;
	_vest      = vest     player;


	//Set Searver Variable
	DressCodeChanger_IsSave   = "1";
	DressCodeChanger_Uniform  = _uniform;
	DressCodeChanger_Vest     = _vest;
	DressCodeChanger_Backpack = _backpack;
	DressCodeChanger_Headgear = _headgear;

	//Variable Synchronism
	publicVariable "DressCodeChanger_IsSave";
	publicVariable "DressCodeChanger_Uniform";
	publicVariable "DressCodeChanger_Vest";
	publicVariable "DressCodeChanger_Backpack";
	publicVariable "DressCodeChanger_Headgear";

	publicVariable "DressCodeChanger_Uniform_Marker";
	publicVariable "DressCodeChanger_Vest_Marker";
	publicVariable "DressCodeChanger_Backpack_Marker";
	publicVariable "DressCodeChanger_Headgear_Marker";

	sleep 0.5;

	//display message
	_uniform_name = "無し";
	if (DressCodeChanger_Uniform != "") then
	{
		_uniform_name = getText(configFile >> "CfgWeapons"  >> DressCodeChanger_Uniform >> "displayName");
	};

	_vest_name     = "無し";
	if (DressCodeChanger_Vest != "") then
	{
		_vest_name = getText(configFile >> "CfgWeapons"  >> DressCodeChanger_Vest >> "displayName");
	};

	_backpack_name  = "無し";
	if (DressCodeChanger_Backpack != "") then
	{
		_backpack_name = getText(configFile >> "CfgVehicles"  >> DressCodeChanger_Backpack >> "displayName");
	};

	_headgear_name  = "無し";
	if (DressCodeChanger_Headgear != "") then
	{
		_headgear_name = getText(configFile >> "CfgWeapons"  >> DressCodeChanger_Headgear >> "displayName");
	};


	//all player to chat message
	player sideChat "今日のドレスコード";
	if(CHANGE_UNIFORM == 1) then
	{
		player sideChat "Uniform : "  + _uniform_name;
		sleep 1.0;
	};
	if(CHANGE_VEST == 1) then
	{
		player sideChat "Vest : "     + _vest_name;
		sleep 1.0;
	};
	if(CHANGE_BACKPACK == 1) then
	{
		player sideChat "Backpack : " + _backpack_name;
		sleep 1.0;
	};
	if(CHANGE_HEADGEAR == 1) then
	{
		player sideChat "Headgear : " + _headgear_name;
	};




	if (!isNil "DressCodeChanger_Uniform_Marker") then
	{
		deleteMarker DressCodeChanger_Uniform_Marker;
	};
	if (!isNil "DressCodeChanger_Vest_Marker") then
	{
		deleteMarker DressCodeChanger_Vest_Marker;
	};
	if (!isNil "DressCodeChanger_Headgear_Marker") then
	{
		deleteMarker DressCodeChanger_Headgear_Marker;
	};
	if (!isNil "DressCodeChanger_Backpack_Marker") then
	{
		deleteMarker DressCodeChanger_Backpack_Marker;
	};


	_ypos = 20;
	_xpos = 500;
	if(CHANGE_HEADGEAR == 1) then
	{
		DressCodeChanger_Headgear_Marker = createMarker ["DressCodeChanger_Headgear_Marker", [_xpos,_ypos,0]];
		DressCodeChanger_Headgear_Marker setMarkerType "hd_dot";
		DressCodeChanger_Headgear_Marker setMarkerColor "ColorRed";
		DressCodeChanger_Headgear_Marker setMarkerText "Headgear : " + _headgear_name;
		_ypos = _ypos + 45;
	};

	if(CHANGE_BACKPACK == 1) then
	{
		DressCodeChanger_Backpack_Marker = createMarker ["DressCodeChanger_Backpack_Marker", [_xpos,_ypos,0]];
		DressCodeChanger_Backpack_Marker setMarkerType "hd_dot";
		DressCodeChanger_Backpack_Marker setMarkerColor "ColorRed";
		DressCodeChanger_Backpack_Marker setMarkerText "Backpack : " + _backpack_name;
		_ypos = _ypos + 45;
	};

	if(CHANGE_VEST == 1) then
	{
		DressCodeChanger_Vest_Marker     = createMarker ["DressCodeChanger_Vest_Marker", [_xpos,_ypos,0]];
		DressCodeChanger_Vest_Marker     setMarkerType "hd_dot";
		DressCodeChanger_Vest_Marker     setMarkerColor "ColorRed";
		DressCodeChanger_Vest_Marker     setMarkerText "Vest : "     + _vest_name;
		_ypos = _ypos + 45;
	};

	if(CHANGE_UNIFORM == 1) then
	{
		DressCodeChanger_Uniform_Marker  = createMarker ["DressCodeChanger_Uniform_Marker", [_xpos,_ypos,0] ];
		DressCodeChanger_Uniform_Marker setMarkerType "hd_dot";
		DressCodeChanger_Uniform_Marker setMarkerColor "ColorRed";
		DressCodeChanger_Uniform_Marker setMarkerText  "Uniform : "  + _uniform_name;
		_ypos = _ypos + 45;
	};


	publicVariable "DressCodeChanger_Uniform_Marker";
	publicVariable "DressCodeChanger_Vest_Marker";
	publicVariable "DressCodeChanger_Headgear_Marker";
	publicVariable "DressCodeChanger_Backpack_Marker";


};
