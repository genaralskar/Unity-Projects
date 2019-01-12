using UnityEngine;

[System.Serializable]
public class Dialog
{
	public enum ChatHeadLoc {None, Left, Right}
	
	[Tooltip("[npc_name] replaces with npc name\n[player_name] replaces with player name")]
	public string name = "[npc_name]";
	public ChatHeadLoc chatHeadLocation = ChatHeadLoc.Left;
	
	[TextArea(3, 10)]
	public string dialog;

}
