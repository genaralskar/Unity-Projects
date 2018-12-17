﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InventoryUIController : MonoBehaviour {

	//controls instatnting/updating inventory items/gold

	public Inventory inventory;

	public GameObject inventorySlotPrefab;
	public GameObject inventorySlotGroup;

	public List<InventorySlotUI> inventorySlots;

//	private void OnEnable()
//	{
//		inventory.UpdateInventory += UpdateInventoryHandler;
//	}

	private void OnDisable()
	{
		inventory.UpdateInventory -= UpdateInventoryHandler;
	}


	public void Start()
	{
		SpawnInventoryPanels();
	}

	protected virtual void SpawnInventoryPanels()
	{
		//spawn in proper number of inventory slots
		
		for (int i = 0; i < inventory.inventory.Count; i++)
		{
			GameObject newSlot = Instantiate(inventorySlotPrefab, inventorySlotGroup.transform);
			InventorySlotUI newSlotUI = newSlot.GetComponent<InventorySlotUI>();
			newSlotUI.inventory = inventory;
			newSlotUI.slotID = i;
			inventorySlots.Add(newSlotUI);
			newSlotUI.UpdateItem();
		}
	}

	public void UpdateInventoryHandler(int index)
	{
		print("Updating inventory on " + this);
		inventorySlots[index].UpdateItem();
	}
}