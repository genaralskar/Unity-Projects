using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Inventory))]
public class AddItemsToInventory : MonoBehaviour {

	Inventory inventory;
	public string[] items;
	public int[] amounts;

	// Use this for initialization
	void Start () {
		inventory = GetComponent<Inventory>();
		AddToInventory();
	}
	
	void AddToInventory()
	{
		for(int i = 0; i < items.Length; i++)
		{
		//	inventory.inventory[i] = ItemDatabase.FindItemBySlug(items[i]);
		//	inventory.inventory[i].AMOUNT = amounts[i];

			inventory.AddItem(items[i], amounts[i]);
		}
	}
}
