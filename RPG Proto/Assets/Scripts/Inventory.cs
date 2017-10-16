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
		//instanciate the item stupid
		Item tempItem = new Item();
		tempItem.SetItem(_item);
		print(tempItem);
	//	tempItem = _item;
	//	tempItem = Instantiate(_item);
		if(_item.stackable && FindItemByTitle(_item.title) != null)
		{
		//	tempItem.amount = FindItem(_item).amount + _amount;
		//	print("stacking item");
			if(FindItemIndex(_item) != -1)
			{
				inventory[FindItemIndex(_item)].amount += _amount;
		//		print(_item.title + " stacked in inventory.");
		//		print(inventory[FindItemIndex(_item)].amount);
			}
		}
		else if(FindEmptySlot() != -1)
		{
			inventory[FindEmptySlot()] = tempItem;
		//	print(_item.title + " added to inventory.");
		//	print(FindItem(_item).amount);
		}
		else
		{
			print("Inventory full");
		}
		if(UpdateInventoryAction != null)
			UpdateInventoryAction();
	}

	public Item FindItem(Item _item) //find item by matching title
	{
	//	print("looking for: " + _item.title);
		foreach(Item i in inventory)
		{
			if(i.title == _item.title)
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
			if(inventory[i].title == _title)
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
			if(inventory[i].title == _item.title)
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
			if(inventory[i] == emptySlot)
			{
				return i;
			}
		}
		return -1;
	}

}
