local bugfix_small_load = false;

function BUGFIX_SMALL_ON_INIT(addon, frame)
	if bugfix_small_load == false then
		_G["GET_DEF_PROP_CHANGEVALUETOOLTIP_LIST_OLD"] = GET_DEF_PROP_CHANGEVALUETOOLTIP_LIST;
		_G["GET_DEF_PROP_CHANGEVALUETOOLTIP_LIST"] = GET_DEF_PROP_CHANGEVALUETOOLTIP_LIST_HOOKED;
		_G["GET_ATK_PROP_CHANGEVALUETOOLTIP_LIST_OLD"] = GET_ATK_PROP_CHANGEVALUETOOLTIP_LIST;
		_G["GET_ATK_PROP_CHANGEVALUETOOLTIP_LIST"] = GET_ATK_PROP_CHANGEVALUETOOLTIP_LIST_HOOKED;
		_G["GET_DEF_PROP_LIST_OLD"] = GET_DEF_PROP_LIST;
		_G["GET_DEF_PROP_LIST"] = GET_DEF_PROP_LIST_HOOKED;
		_G["GET_ATK_PROP_LIST_OLD"] = GET_ATK_PROP_LIST;
		_G["GET_ATK_PROP_LIST"] = GET_ATK_PROP_LIST_HOOKED;
		bugfix_small_load = true;
		CHAT_SYSTEM("スモールクリスタラス表示修正 読み込み完了！");
	end
end

function GET_DEF_PROP_CHANGEVALUETOOLTIP_LIST_HOOKED()

	local list = {};
    list[#list+1] = "DEF";
    list[#list+1] = "PATK";
    list[#list+1] = "MATK";
    list[#list+1] = "ADD_MAXATK";
    list[#list+1] = "ADD_MINATK";
    list[#list+1] = "STR";
    list[#list+1] = "DEX";
    list[#list+1] = "INT";
    list[#list+1] = "CON";
    list[#list+1] = "MNA";
    list[#list+1] = "MHP";
    list[#list+1] = "MSP";
    list[#list+1] = "MSTA";
    list[#list+1] = "CRTHR";
    list[#list+1] = "CRTDR";
    list[#list+1] = "CRTATK";
    list[#list+1] = "KDPow";
    list[#list+1] = "SkillPower";
    list[#list+1] = "MHR";
    list[#list+1] = "MDEF";
    list[#list+1] = "SkillRange";
    list[#list+1] = "SkillAngle";
    list[#list+1] = "MSPD";
    list[#list+1] = "RHP";
    list[#list+1] = "RSP";
    list[#list+1] = "SR";
    list[#list+1] = "SDR";
    list[#list+1] = "BLK";
    list[#list+1] = "BLK_BREAK";
    list[#list+1] = "ADD_FORESTER";
    list[#list+1] = "ADD_WIDLING";
    list[#list+1] = "ADD_VELIAS";
    list[#list+1] = "ADD_PARAMUNE";
    list[#list+1] = "ADD_KLAIDA";
    list[#list+1] = "ADD_SMALLSIZE";
    list[#list+1] = "ADD_MIDDLESIZE";
    list[#list+1] = "ADD_LARGESIZE";
    list[#list+1] = "ADD_CLOTH";
    list[#list+1] = "ADD_LEATHER";
    list[#list+1] = "ADD_IRON";
    list[#list+1] = "ADD_GHOST";
    list[#list+1] = "ADD_FIRE";
    list[#list+1] = "ADD_ICE";
    list[#list+1] = "ADD_POISON";
    list[#list+1] = "ADD_LIGHTNING";
    list[#list+1] = "ADD_EARTH";
    list[#list+1] = "ADD_HOLY";
    list[#list+1] = "ADD_DARK";
    list[#list+1] = "Aries";
    list[#list+1] = "Slash";
    list[#list+1] = "Strike";
    list[#list+1] = "RES_FIRE";
    list[#list+1] = "RES_ICE";
    list[#list+1] = "RES_POISON";
    list[#list+1] = "RES_LIGHTNING";
    list[#list+1] = "RES_EARTH";
    list[#list+1] = "RES_HOLY";
    list[#list+1] = "RES_DARK";
    list[#list+1] = "AriesDEF";
    list[#list+1] = "SlashDEF";
    list[#list+1] = "StrikeDEF";
    list[#list+1] = "HR";
    list[#list+1] = "DR";
    list[#list+1] = "ADD_SOUL";
    list[#list+1] = "RES_SOUL";
	return list;

end

function GET_ATK_PROP_CHANGEVALUETOOLTIP_LIST_HOOKED()
	
	local list = {};
    list[#list+1] = "SR";
    list[#list+1] = "SDR";
    list[#list+1] = "MINATK";
    list[#list+1] = "MAXATK";
    list[#list+1] = "ADD_MAXATK";
    list[#list+1] = "ADD_MINATK";
    list[#list+1] = "PATK";
    list[#list+1] = "MATK";
    list[#list+1] = "STR";
    list[#list+1] = "DEX";
    list[#list+1] = "INT";
    list[#list+1] = "MNA";
    list[#list+1] = "CON";
    list[#list+1] = "MHP";
    list[#list+1] = "MSP";
    list[#list+1] = "MSTA";
    list[#list+1] = "CRTHR";
    list[#list+1] = "CRTDR";
    list[#list+1] = "CRTATK";
    list[#list+1] = "KDPow";
    list[#list+1] = "SkillPower";
    list[#list+1] = "MHR";
    list[#list+1] = "MDEF";
    list[#list+1] = "SkillRange";
    list[#list+1] = "SkillAngle";
    list[#list+1] = "MSPD";
    list[#list+1] = "RHP";
    list[#list+1] = "RSP";
    list[#list+1] = "BlockRate";
    list[#list+1] = "BLK";
    list[#list+1] = "ADD_FORESTER";
    list[#list+1] = "ADD_WIDLING";
    list[#list+1] = "ADD_VELIAS";
    list[#list+1] = "ADD_PARAMUNE";
    list[#list+1] = "ADD_KLAIDA";
    list[#list+1] = "ADD_SMALLSIZE";
    list[#list+1] = "ADD_MIDDLESIZE";
    list[#list+1] = "ADD_LARGESIZE";
    list[#list+1] = "ADD_CLOTH";
    list[#list+1] = "ADD_LEATHER";
    list[#list+1] = "ADD_IRON";
    list[#list+1] = "ADD_GHOST";
    list[#list+1] = "ADD_FIRE";
    list[#list+1] = "ADD_ICE";
    list[#list+1] = "ADD_POISON";
    list[#list+1] = "ADD_LIGHTNING";
    list[#list+1] = "ADD_EARTH";
    list[#list+1] = "ADD_HOLY";
    list[#list+1] = "ADD_DARK";
    list[#list+1] = "Aries";
    list[#list+1] = "Slash";
    list[#list+1] = "Strike";
    list[#list+1] = "RES_FIRE";
    list[#list+1] = "RES_ICE";
    list[#list+1] = "RES_POISON";
    list[#list+1] = "RES_LIGHTNING";
    list[#list+1] = "RES_EARTH";
    list[#list+1] = "RES_HOLY";
    list[#list+1] = "RES_DARK";
    list[#list+1] = "AriesDEF";
    list[#list+1] = "SlashDEF";
    list[#list+1] = "StrikeDEF";
    list[#list+1] = "HR";
    list[#list+1] = "DR";
    list[#list+1] = "ADD_SOUL";
    list[#list+1] = "RES_SOUL";
	return list;

end

function GET_DEF_PROP_LIST_HOOKED()

	local list = {};
    list[#list+1] = "DEF";
    list[#list+1] = "ADD_DEF";
    list[#list+1] = "PATK";
    list[#list+1] = "MATK";
    list[#list+1] = "ADD_MAXATK";
    list[#list+1] = "ADD_MINATK";
    list[#list+1] = "ADD_MATK";
    list[#list+1] = "STR";
    list[#list+1] = "DEX";
    list[#list+1] = "INT";
    list[#list+1] = "CON";
    list[#list+1] = "MNA";
    list[#list+1] = "MHP";
    list[#list+1] = "MSP";
    list[#list+1] = "MSTA";
    list[#list+1] = "CRTHR";
    list[#list+1] = "CRTDR";
    list[#list+1] = "CRTATK";
    list[#list+1] = "KDPow";
    list[#list+1] = "SkillPower";
    list[#list+1] = "ADD_HR";
    list[#list+1] = "ADD_DR";
    list[#list+1] = "MHR";
    list[#list+1] = "ADD_MHR";
    list[#list+1] = "MDEF";
    list[#list+1] = "ADD_MDEF";
    list[#list+1] = "SkillRange";
    list[#list+1] = "SkillAngle";
    list[#list+1] = "MSPD";
    list[#list+1] = "RHP";
    list[#list+1] = "RSP";
    list[#list+1] = "SR";
    list[#list+1] = "SDR";
    list[#list+1] = "BLK";
    list[#list+1] = "BLK_BREAK";
    list[#list+1] = "ADD_FORESTER";
    list[#list+1] = "ADD_WIDLING";
    list[#list+1] = "ADD_VELIAS";
    list[#list+1] = "ADD_PARAMUNE";
    list[#list+1] = "ADD_KLAIDA";
    list[#list+1] = "ADD_SMALLSIZE";
    list[#list+1] = "ADD_MIDDLESIZE";
    list[#list+1] = "ADD_LARGESIZE";
    list[#list+1] = "ADD_CLOTH";
    list[#list+1] = "ADD_LEATHER";
    list[#list+1] = "ADD_IRON";
    list[#list+1] = "ADD_GHOST";
    list[#list+1] = "ADD_FIRE";
    list[#list+1] = "ADD_ICE";
    list[#list+1] = "ADD_POISON";
    list[#list+1] = "ADD_LIGHTNING";
    list[#list+1] = "ADD_EARTH";
    list[#list+1] = "ADD_HOLY";
    list[#list+1] = "ADD_DARK";
    list[#list+1] = "Aries";
    list[#list+1] = "Slash";
    list[#list+1] = "Strike";
    list[#list+1] = "RES_FIRE";
    list[#list+1] = "RES_ICE";
    list[#list+1] = "RES_POISON";
    list[#list+1] = "RES_LIGHTNING";
    list[#list+1] = "RES_EARTH";
    list[#list+1] = "RES_HOLY";
    list[#list+1] = "RES_DARK";
    list[#list+1] = "AriesDEF";
    list[#list+1] = "SlashDEF";
    list[#list+1] = "StrikeDEF";
    list[#list+1] = "HR";
    list[#list+1] = "DR";
    list[#list+1] = "ADD_SOUL";
    list[#list+1] = "RES_SOUL";
	return list;

end

function GET_ATK_PROP_LIST_HOOKED()
	
	local list = {};
    list[#list+1] = "SR";
    list[#list+1] = "SDR";
    list[#list+1] = "MINATK";
    list[#list+1] = "MAXATK";
    list[#list+1] = "ADD_MAXATK";
    list[#list+1] = "ADD_MINATK";
    list[#list+1] = "ADD_MATK";
    list[#list+1] = "PATK";
    list[#list+1] = "MATK";
    list[#list+1] = "ADD_DEF";
    list[#list+1] = "STR";
    list[#list+1] = "DEX";
    list[#list+1] = "INT";
    list[#list+1] = "MNA";
    list[#list+1] = "CON";
    list[#list+1] = "MHP";
    list[#list+1] = "MSP";
    list[#list+1] = "MSTA";
    list[#list+1] = "CRTHR";
    list[#list+1] = "CRTDR";
    list[#list+1] = "CRTATK";
    list[#list+1] = "KDPow";
    list[#list+1] = "SkillPower";
    list[#list+1] = "ADD_HR";
    list[#list+1] = "ADD_DR";
    list[#list+1] = "MHR";
    list[#list+1] = "ADD_MHR";
    list[#list+1] = "MDEF";
    list[#list+1] = "ADD_MDEF";
    list[#list+1] = "SkillRange";
    list[#list+1] = "SkillAngle";
    list[#list+1] = "MSPD";
    list[#list+1] = "RHP";
    list[#list+1] = "RSP";
    list[#list+1] = "BLK";
    list[#list+1] = "BLK_BREAK";
    list[#list+1] = "ADD_FORESTER";
    list[#list+1] = "ADD_WIDLING";
    list[#list+1] = "ADD_VELIAS";
    list[#list+1] = "ADD_PARAMUNE";
    list[#list+1] = "ADD_KLAIDA";
    list[#list+1] = "ADD_SMALLSIZE";
    list[#list+1] = "ADD_MIDDLESIZE";
    list[#list+1] = "ADD_LARGESIZE";
    list[#list+1] = "ADD_CLOTH";
    list[#list+1] = "ADD_LEATHER";
    list[#list+1] = "ADD_IRON";
    list[#list+1] = "ADD_GHOST";
    list[#list+1] = "ADD_FIRE";
    list[#list+1] = "ADD_ICE";
    list[#list+1] = "ADD_POISON";
    list[#list+1] = "ADD_LIGHTNING";
    list[#list+1] = "ADD_EARTH";
    list[#list+1] = "ADD_HOLY";
    list[#list+1] = "ADD_DARK";
    list[#list+1] = "Aries";
    list[#list+1] = "Slash";
    list[#list+1] = "Strike";
    list[#list+1] = "RES_FIRE";
    list[#list+1] = "RES_ICE";
    list[#list+1] = "RES_POISON";
    list[#list+1] = "RES_LIGHTNING";
    list[#list+1] = "RES_EARTH";
    list[#list+1] = "RES_HOLY";
    list[#list+1] = "RES_DARK";
    list[#list+1] = "AriesDEF";
    list[#list+1] = "SlashDEF";
    list[#list+1] = "StrikeDEF";
    list[#list+1] = "HR";
    list[#list+1] = "DR";
    list[#list+1] = "ADD_SOUL";
    list[#list+1] = "RES_SOUL";
	return list;

end