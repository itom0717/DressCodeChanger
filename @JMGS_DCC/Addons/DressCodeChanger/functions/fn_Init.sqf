//------------------------------------------
//Dress Code Changer
//
// Name:
//   DressCodeChanger_Fnc_Init
//
// Description:
//   Initializing process
//   Perform the processing of the server-side and client-side
//
// Parameters:
//   Nothing
//
// Returns:
//   Nothing
//------------------------------------------


//Server Side Only
if (isServer or isDedicated) then
{
	//initialization server variable
	DressCodeChanger_IsSave   = "0";
	DressCodeChanger_Uniform  = "";
	DressCodeChanger_Vest     = "";
	DressCodeChanger_Headgear = "";
	DressCodeChanger_Backpack = "";

	publicVariable "DressCodeChanger_IsSave";
	publicVariable "DressCodeChanger_Uniform";
	publicVariable "DressCodeChanger_Vest";
	publicVariable "DressCodeChanger_Headgear";
	publicVariable "DressCodeChanger_Backpack";

};


//---------------------------
//Client Side Only
if (hasInterface) then
{
	waitUntil
	{
		!isnull player
	};

	if (player == player) then
	{

		//Change at the start of equipment
		nul = [] spawn DressCodeChanger_Fnc_StartEquipment;

		//Add a menu to ActionMenu
		nul = [] spawn DressCodeChanger_Fnc_AddActionMenu;

		//Add EventHandler Respawn
		player addEventHandler ["Respawn", {nul = [] spawn DressCodeChanger_Fnc_AddActionMenu}];

	};


};
//---------------------------

