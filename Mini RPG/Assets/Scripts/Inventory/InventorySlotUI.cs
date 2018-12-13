using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class InventorySlotUI : MonoBehaviour
{
	public Item item;
	public int amount;
	public Inventory inventory;
	public int slotID;

	[SerializeField] private Image itemImage;
	[SerializeField] private TextMeshProUGUI amountText;

	private void Awake()
	{
		amountText = itemImage.GetComponentInChildren<TextMeshProUGUI>();
	}

	public void UpdateItem()
	{
		//check item in inventory
		//if the same, leave image
		//else change image
		if (inventory.inventory[slotID].item != item)
		{
			itemImage.sprite = item.image;
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
}
