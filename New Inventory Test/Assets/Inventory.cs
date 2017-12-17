using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Inventory : MonoBehaviour {

	public Item[] inventory;
	public UnityAction InventoryUpdate;


	void Awake()
	{
		for(int i = 0; i < inventory.Length; i++)
		{
			if(inventory[i].title == "")
			{
				inventory[i] = new Item("empty");
			}
		}
	}

	public void AddItem(string _slug)
	{
		int _amount = 1;
		foreach(var item in inventory) //checks if item is stackable
		{
			if(item.slug == _slug)
			{
				if(item.stackable)
				{
					item.amount += _amount;
					InventoryUpdate();
					return;
				}
			}
		}

		for(int i = 0; i < inventory.Length; i++) //replace empty slot with new item
		{
			if(inventory[i].slug == "empty")
			{
				inventory[i] = new Item(_slug);
				if(inventory[i].stackable)
				{
					inventory[i].amount = _amount;
				}
				InventoryUpdate();
				return;
			}
		}
		print("inventory full");

	}

}
