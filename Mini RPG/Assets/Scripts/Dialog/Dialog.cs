using UnityEngine;

[System.Serializable]
public class Dialog
{

	public string name;
	public Texture chatHead;
	[Tooltip("False makes the head appear on the left\nTrue makes the head appear on the right")]
	public bool chatHeadSide;
	
	[TextArea(3, 10)]
	public string dialog;

}
