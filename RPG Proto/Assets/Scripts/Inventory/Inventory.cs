using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class Inventory : MonoBehaviour {

	public Action UpdateInventoryAction;

	public int inventorySize;
	public Item[] inventory;
	public Item emptySlot;

	void Start()
	{
		inventory = new Item[inventorySize];
		for(int i = 0; i < inventory.Length; i++)
		{
			if(inventory[i] == null)
			{
				inventory[i] = ItemDatabase.FindItemBySlug("empty");
			}
		}
		if(UpdateInventoryAction != null)
			UpdateInventoryAction();
	}



	public void AddItem(string _item, int _amount)
	{
		Item tempItem = new Item(ItemDatabase.FindItemBySlug(_item));
		if(FindItem(tempItem) != null && tempItem.STACKABLE)	//if item in inventory, stack item
		{
			inventory[FindItemIndex(tempItem)].AMOUNT += _amount;
		}
		else	//add item if not
		{
			tempItem.AMOUNT = _amount;
			inventory[FindEmptySlot()] = tempItem;
		}

		if(UpdateInventoryAction != null)
			UpdateInventoryAction();
	}

	public Item FindItem(Item _item) //find item by matching title
	{
	//	print("looking for: " + _item.title);
		foreach(Item i in inventory)
		{
			if(i.TITLE == _item.TITLE)
			{
			//	print("found " + i);
				return i;
			}
		}

		return null;
	}

	public Item FindItemByTitle(string _title)
	{
	//	print("looking for " + _title);
		for(int i = 0; i < inventory.Length; i++)
		{
			if(inventory[i].TITLE == _title)
			{
			//	print("found " + i);
				return inventory[i];
			}
		}
	//	print("nothing found");
		return null;
	}


	public int FindItemIndex(Item _item)
	{
		for(int i = 0; i < inventory.Length; i++)
		{
		//	print(inventory[i].title);
			if(inventory[i].TITLE == _item.TITLE)
			{
				return i;
			}
		}
		return -1;
	}

	public int FindEmptySlot()
	{
		for(int i = 0; i < inventory.Length; i++)
		{
			if(inventory[i] == ItemDatabase.FindItemBySlug("empty"))
			{
				return i;
			}
		}
		return -1;
	}

}
