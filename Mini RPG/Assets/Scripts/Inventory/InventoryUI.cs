using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InventoryUI : MonoBehaviour
{

	public Inventory inventory;
	public GameObject inventoryWindowPrefab;
	public GameObject inventoryCanvas;
	
	// Use this for initialization
	void Start () {
		
	}

	public void OpenInventory()
	{
		//create inventory window
		GameObject invWindow = Instantiate(inventoryWindowPrefab, inventoryCanvas.transform);

		InventoryUIController newInvController = invWindow.GetComponent<InventoryUIController>();
		newInvController.inventory = inventory;
		
		//this is probably a bad idea
		inventory.UpdateInventory += newInvController.UpdateInventoryHandler;

//		//create inventory slots in window
//		for (int i = 0; i < inventory.inventorySize; i++)
//		{
//			GameObject newSlot = Instantiate(inventorySlotPrefab);
//			
//			//parent to invWindow
//			newSlot.transform.SetParent(invWindow.transform);
//			
//			//add item to slots
//			InventorySlotUI newSlotUI = newSlot.GetComponent<InventorySlotUI>();
//			newSlotUI.item = inventory.inventory[i].item;
//			newSlotUI.amount = inventory.inventory[i].amount;
//			newSlotUI.slotID = i;
//			newSlotUI.inventory = inventory;
//			
//			//add newSlot to invSlot list
//			invSlots.Add(newSlotUI);
//		}
	}

	public void CloseInventory()
	{
		
	}

	public void UpdateItem(int ItemSlot)
	{
		
	}
	
}
