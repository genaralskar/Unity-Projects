using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item : MonoBehaviour {

	public string title;
	public int amount = 1;
	public enum ItemType{ITEM, WEAPON, ARMOR};
	public Item.ItemType type;
	public bool stackable = false;

	public void  SetItem (Item _item)
	{
		this.title = _item.title;
	//	print("title is" + title);
		this.amount = _item.amount;
		this.type = _item.type;
		this.stackable = _item.stackable;
	}

	public void UpdateAmount(int _amount)
	{
		this.amount += _amount;
	}

}
