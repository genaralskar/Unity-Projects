using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Inventory : MonoBehaviour {

	public List<Item> itemList; //items this inventory can hold

	public List<int> itemsAmounts; //amounts of certain items

	public List<InventorySlot> inv;

	public UnityAction UpdateInventory;
	
	void Awake()
	{
		foreach(Item item in itemList)
		{
			itemsAmounts.Add(0);
		}
	}

	void Start()
	{
		
	}

	public void AddItem(Item _item, int _amount)
	{
		int i = 0;
		foreach(Item obj in itemList)
		{
			if(obj == _item)
			{
				break;
			}
			else
			{
				i++;	
			}
		}
		itemsAmounts[i] += _amount;

		for(int j = 0; j < inv.Count; j++)
		{
			if(inv[j].item == _item)
			{
				inv[j].amount += _amount;
			}
		}

		
		if(UpdateInventory != null)
		{
			UpdateInventory();
		}
	//	print("added " + _amount + " " + _item);
	}

	public void LoseItem(Item _item, int _amount)
	{
		int i = 0;
		foreach(Item _obj in itemList)
		{
			if(_obj == _item)
			{
				break;
			}
			else
			{
				i++;
			}
		}
		itemsAmounts[i] -= _amount;
		if(itemsAmounts[i] < 0)
		{
			itemsAmounts[i] = 0;
		}

		if(UpdateInventory != null)
		{
			UpdateInventory();
		}
	}
}
