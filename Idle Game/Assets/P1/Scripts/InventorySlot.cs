using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class InventorySlot : MonoBehaviour, IDropHandler {

	public int id;
	private Inventory inv;

	void Start()
	{
		inv = GameObject.Find("Inventory").GetComponent<Inventory>();
	}

	public void OnDrop(PointerEventData eventData)
	{
		ItemData droppedItem = eventData.pointerDrag.GetComponent<ItemData>();
		Debug.Log("duug");
		if(inv.items[id].ID == -1)
		{
			inv.items[droppedItem.slotNum] = new Item();
			inv.items[id] = droppedItem.item;
			droppedItem.slotNum = id;
		}
		else
		{
			Transform item = this.transform.GetChild(0);
			item.GetComponent<ItemData>().slotNum = droppedItem.slotNum;
			item.transform.SetParent(inv.slots[droppedItem.slotNum].transform);
			item.transform.position = inv.slots[droppedItem.slotNum].transform.position;

			droppedItem.slotNum = id;
			droppedItem.transform.SetParent(this.transform);
			droppedItem.transform.position = this.transform.position;

			inv.items[droppedItem.slotNum] = item.GetComponent<ItemData>().item;
			inv.items[id] = droppedItem.item;
		}
	}
}
