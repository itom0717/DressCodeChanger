//------------------------------------------
//Dress Code Changer user config file
// userconfig\DressCodeChanger\setting.hpp
//------------------------------------------


//メニューを表示する場所
// 1:自分自身のメニュー
// 2:ポールのメニュー
// 3:両方
#define MENU_DISP_FLAG 3


//メニューを追加するFlagのClassname
#define IS_DISP_MENU_FLAG ["Flag_NATO_F"]

//保存メニュー名
#define MENU_TEXT_SAVE "<t color='#DC143C'>ドレスコード登録(リーダー専用)</t>"

//読出メニュー名
#define MENU_TEXT_LOAD "<t color='#7FFF00'>ドレスコード呼出</t>"


//ドレスコード登録メニューを表示させるクラス(自分自身のメニューに追加する場合に使用)
//Platoon Leader
//Squad Leader
#define IS_DISP_SAVE_MENU ["B_officer_F","B_Soldier_SL_F"]


//Medicのクラス名
#define MEDIC_CALSSNAME   ["B_medic_F"]




//ドレスコードで指定するアイテム
// 1で変更対象
//Uniform
#define CHANGE_UNIFORM    1
//Vest
#define CHANGE_VEST       1
//Backpack
#define CHANGE_BACKPACK   1
//Headgear
#define CHANGE_HEADGEAR   1













//アイテムをすべて削除するか？
// 1 ですべてのアイテムを一旦削除する
#define REMOVE_ALL_ITEMS  0

//開始時の服装等クラスネームで指定
// "" で変更なし

//Uniform
#define INIT_UNIFORM    "TRYK_U_B_JSDF_CombatUniform"

//Vest
#define INIT_VEST       "TRYK_V_PlateCarrier_JSDF"

//Backpack
#define INIT_BACKPACK   "TRYK_B_Carryall_JSDF"

//Headgear
#define INIT_HEADGEAR   "TRYK_H_Helmet_JSDF"











//バックパックに追加するアイテム
// [[classname, qty] ,[classname, qty], ....... ]

//メッディック以外のアイテム
#define INIT_ITEMS        [["ACE_EarPlugs",1],["ACE_fieldDressing", 20],["ACE_morphine", 15],["ACE_epinephrine",3],["ACE_bloodIV",1]]

//メッディックのアイテム
#define INIT_ITEMS_MEDIC  [["ACE_EarPlugs",1],["ACE_fieldDressing", 50],["ACE_morphine", 30],["ACE_epinephrine",20],["ACE_bloodIV",3]]



//ACE Items
// "ACE_EarPlugs"       --- Ear Plugs
// "ACE_fieldDressing"  --- Bandage (Basic)
// "ACE_packingBandage" --- Packing Bandage
// "ACE_elasticBandage" --- Bandage (Elastic)
// "ACE_tourniquet"     --- Tourniquet (CAT)
// "ACE_morphine"       --- Morphine autoinjector
// "ACE_atropine"       --- Atropin autoinjector
// "ACE_epinephrine"    --- Epinephrine autoinjector
// "ACE_plasmaIV"       --- Plasma IV (1000ml)
// "ACE_plasmaIV_500"   --- Plasma IV (500ml)
// "ACE_plasmaIV_250"   --- Plasma IV (250ml)
// "ACE_bloodIV"        --- Blood IV (1000ml)
// "ACE_bloodIV_500"    --- Blood IV (500ml)
// "ACE_bloodIV_250"    --- Blood IV (250ml)
// "ACE_salineIV"       --- Saline IV (1000ml)
// "ACE_salineIV_500"   --- Saline IV (500ml)
// "ACE_salineIV_250"   --- Saline IV (250ml)
// "ACE_quikclot"       --- Basic Field Dressing (QuikClot)
// "ACE_personalAidKit" --- Personal Aid Kit
// "ACE_surgicalKit"    --- Surgical Kit
// "ACE_bodyBag"        --- Bodybag
