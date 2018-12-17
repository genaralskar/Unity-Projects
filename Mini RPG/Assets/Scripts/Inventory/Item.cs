using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[CreateAssetMenu(menuName = "Item/New Item")]
public class Item : ScriptableObject
{

	public string title;
	public bool stackable = true;

	public Sprite image;

	public ItemType itemType;
	//item value
	//item 

}
