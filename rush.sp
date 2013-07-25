#include <sourcemod>
#include <sdktools>
 
public Plugin:myinfo =
{
	name = "TF2 Rush Mode",
	author = "Alec Shields",
	description = "A game mode where all players on both teams are the same class",
	version = "0.1.0",
	url = "https://github.com/awshields/tf2rush"
}
 
public OnPluginStart()
{
	LoadTranslations("common.phrases");
	RegAdminCmd("sm_AllScout", Command_AllScout, ADMFLAG_SLAY);

	//sm_myslap_damage = CreateConVar("sm_myslap_damage", "5", "Default slap damage");
	//AutoExecConfig(true, "plugin_myslap");
}
 
public Action:Command_AllScout()
{
	new String:arg1[32], String:arg2[32];
 
	/**
	 * target_name - stores the noun identifying the target(s)
	 * target_list - array to store clients
	 * target_count - variable to store number of clients
	 * tn_is_ml - stores whether the noun must be translated
	 */
	new String:target_name[MAX_TARGET_LENGTH];
	new target_list[MAXPLAYERS], target_count;
	new bool:tn_is_ml;
 
	// if ((target_count = ProcessTargetString(
	// 		arg1,
	// 		client,
	// 		target_list,
	// 		MAXPLAYERS,
	// 		COMMAND_FILTER_ALIVE, /* Only allow alive players */
	// 		target_name,
	// 		sizeof(target_name),
	// 		tn_is_ml)) <= 0)
	// {
	// 	/* This function replies to the admin with a failure message */
	// 	ReplyToTargetError(client, target_count);
	// 	return Plugin_Handled;
	// }
 
	for (new i = 0; i < target_count; i++)
	{

		//SlapPlayer(target_list[i], damage);
		//LogAction(client, target_list[i], "\"%L\" slapped \"%L\" (damage %d)", client, target_list[i], damage);
	}
 
	if (tn_is_ml)
	{
		//ShowActivity2(client, "[SM] ", "Slapped %t for %d damage!", target_name, damage);
	}
	else
	{
		//ShowActivity2(client, "[SM] ", "Slapped %s for %d damage!", target_name, damage);
	}
 
	return Plugin_Handled;
}