using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item : MonoBehaviour {

	public string title;
	public int amount = 1;
	public enum ItemType{ITEM, WEAPON, ARMOR};
	public Item.ItemType type;
	public bool stackable = false;

	public void UpdateAmount(int _amount)
	{
		this.amount += _amount;
	}

}
