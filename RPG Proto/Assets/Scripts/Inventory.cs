using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class Inventory : MonoBehaviour {

	public Action UpdateInventoryAction;

	public Item[] inventory;
	public Item emptySlot;

	void Start()
	{
		for(int i = 0; i < inventory.Length; i++)
		{
			if(inventory[i] == null)
			{
				inventory[i] = emptySlot;
			}
		}
		if(UpdateInventoryAction != null)
			UpdateInventoryAction();
	}

	public void AddItem(Item _item, int _amount)
	{
		if(_item.stackable && FindItem(_item) != null)
		{
			FindItem(_item).UpdateAmount(_amount);
			print(_item.title + " stacked in inventory.");
			print(FindItem(_item).amount);
		}
		else if(FindEmptySlot() != -1)
		{
			inventory[FindEmptySlot()] = _item;
			print(_item.title + " added to inventory.");
			print(FindItem(_item).amount);
		}
		else
		{
			print("Inventory full");
		}
		if(UpdateInventoryAction != null)
			UpdateInventoryAction();
	}

	public Item FindItem(Item _item)
	{
		foreach(Item i in inventory)
		{
			if(i.title == _item.title)
			{
				return i;
			}
		}

		return null;
	}

	public int FindEmptySlot()
	{
		for(int i = 0; i < inventory.Length; i++)
		{
			if(inventory[i] == emptySlot)
			{
				return i;
			}
		}


		// foreach(Item i in inventory)
		// {
		// 	if(i.title == "Empty")
		// 	{
		// 		return i;
		// 	}
		// }
		
		return -1;
	}

}
