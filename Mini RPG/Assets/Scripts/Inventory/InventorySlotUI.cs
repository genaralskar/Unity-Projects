using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class InventorySlotUI : MonoBehaviour, IDropHandler
{
	public Item item;
	public int amount;
	public Inventory inventory;
	public int slotID;
	
	[SerializeField] private Image itemImage;
	[Tooltip("The sprite to show when there is not item in the slot")]
	[SerializeField] private Sprite emptySprite;
	[SerializeField] private TextMeshProUGUI amountText;

	private void Awake()
	{
		amountText = itemImage.GetComponentInChildren<TextMeshProUGUI>();
	}

	public void UpdateItem()
	{
		//if there is not item in the slot
		if (inventory.inventory[slotID].item == null)
		{
			item = null;
			amountText.text = "";
			if (emptySprite != null)
			{
				itemImage.sprite = emptySprite;
				itemImage.color = new Color(0, 0, 0, 0.25f);
				print("changed empty sprite");
			}
			else
			{
				itemImage.sprite = null;
				itemImage.color = new Color(0, 0, 0, 0);
			}
			
			return;
		}
		
		//update item to proper item
		item = inventory.inventory[slotID].item;
		
		//check item in inventory
		//if sprite is the same, leave image
		//else change image
		if (inventory.inventory[slotID].item.image != itemImage.sprite)
		{
			itemImage.sprite = item.image;
			itemImage.color = Color.white;
//			print("changing sprite to " + item.image);
		}
		
		//update amount in inventory
		amount = inventory.inventory[slotID].amount;
		if (amount > 1)
		{
			amountText.text = inventory.inventory[slotID].amount.ToString();
		}
		else
		{
			amountText.text = "";
		}
	}

	public void OnDrop(PointerEventData e)
	{
		print("Item Dropped On " + this);
		//gets the item being dropped
		ItemUI tempItem = e.pointerDrag.GetComponent<ItemUI>();
		InventorySlotUI tempSlotUI = tempItem.inventorySlot.GetComponent<InventorySlotUI>();
		//gets the inventory for the item being dropped
		Inventory newItemInv = tempSlotUI.inventory;

		//check if item can move to item slot
		if (inventory.inventory[slotID].itemType == null || tempSlotUI.item.itemType == inventory.inventory[slotID].itemType)
		{
			//set item's inventory to this item, and set this inventories item to the new item
			//store the other item/amount
			InventorySlot tempSlot = newItemInv.inventory[tempSlotUI.slotID];
			Item tempSlotItem = tempSlot.item;
			int tempAmount = tempSlot.amount;
			//set other inventory to this item
			newItemInv.inventory[tempSlotUI.slotID].item = inventory.inventory[slotID].item;
			newItemInv.inventory[tempSlotUI.slotID].amount = inventory.inventory[slotID].amount;
			//update inventory ui stuff
			print(newItemInv);
			newItemInv.UpdateInventory(tempSlotUI.slotID);

			//set this inventory item to the new item
			print("tempSlot's Item is " + tempSlot.item);
			inventory.inventory[slotID].item = tempSlotItem;
			inventory.inventory[slotID].amount = tempAmount;
			//update inventory ui stuff
			inventory.UpdateInventory(slotID);
		}

	}
}
