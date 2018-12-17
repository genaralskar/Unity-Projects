using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EquipmentInventoryUI : InventoryUIController
{

	protected override void SpawnInventoryPanels()
	{
		foreach (var slot in inventorySlots)
		{
			slot.inventory = inventory;
		}
		
	}
	
		private void OnEnable()
	{
		inventory.UpdateInventory += UpdateInventoryHandler;
		if (inventorySlots[0].inventory != null)
		{
			foreach (var item in inventorySlots)
			{
//				print("Updating equipment items ui for " + item);
				item.UpdateItem();
			}
		}
		
	}

	private void OnDisable()
	{
		inventory.UpdateInventory -= UpdateInventoryHandler;
	}
}
