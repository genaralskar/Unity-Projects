using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InventoryUI : MonoBehaviour {

	public Inventory inventory;
	public InventorySlot[] invPanels;
	public Image invPanel;

	void Start()
	{
		SpawnPanels();
		inventory.InventoryUpdate += UpdatePanels;
	}

	void SpawnPanels()
	{
		invPanels = new InventorySlot[inventory.inventory.Length];
		int i = 0;
		foreach(var slot in inventory.inventory)
		{
			Image temp = Instantiate(invPanel);
			temp.transform.SetParent(this.transform);
			InventorySlot tempSlot = temp.GetComponent<InventorySlot>();
			invPanels[i] = tempSlot;
			tempSlot.slotID = i;
			tempSlot.item = inventory.inventory[i];

		//	tempSlot.UpdateAmount();

			i++;
		}
		UpdatePanels();
	}

	void UpdatePanels()
	{
		int i = 0;
		foreach(InventorySlot slot in invPanels)
		{
			if(slot.item != inventory.inventory[i])
			{
				slot.item = inventory.inventory[i];
				slot.GetComponent<Image>().sprite = Resources.Load<Sprite>("Sprites/Item_Icons/" + slot.item.slug);
			}
			
			slot.UpdateAmount();
			
			i++;
		}
	}

}
