using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class InventorySlot : MonoBehaviour, IDropHandler {

	public int id;
	public Item item;
	public Image image;
	public Text amountText;
	public Inventory inventory;
	public InventoryItem invItem;

	void Start()
	{
	//	print(item.TITLE);
		invItem.item = item;

		inventory.UpdateInventoryAction += invItem.UpdateAmount;
		inventory.UpdateInventoryAction += UpdateItem;

	//	amountText = transform.GetChild(0).GetComponent<Text>();
	//	print(item);
	//	UpdateItem();
	}

	public void UpdateItem()
	{
		invItem.item = item;
		invItem.UpdateAmount();
	//	inventory.UpdateInventoryAction -= invItem.UpdateAmount;
	}

	public void OnDrop(PointerEventData data)
	{
		InventoryItem tempItem = data.pointerDrag.GetComponent<InventoryItem>(); //item being dropped
		InventorySlot slotRef = tempItem.origParent.GetComponent<InventorySlot>(); //slot item being dropped came from
		print(tempItem.item);
		if(item != tempItem.item)
		{
			Item temp = tempItem.item; //item being dropped
			slotRef.inventory.inventory[slotRef.id] = invItem.item;
			inventory.inventory[id] = temp;
			tempItem.item = invItem.item;
			invItem.item = temp;
			print("whoa");
			inventory.UpdateInventoryAction();
			slotRef.inventory.UpdateInventoryAction();
		}
	}

}
