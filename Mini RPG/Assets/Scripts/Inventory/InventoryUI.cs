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

	}

	public void CloseInventory()
	{
		
	}

	public void UpdateItem(int ItemSlot)
	{
		
	}
	
}
