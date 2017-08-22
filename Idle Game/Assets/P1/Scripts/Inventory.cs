using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class Inventory : MonoBehaviour {

	GameObject inventoryPanel;
	GameObject slotPanel;
	ItemDatabase database;
	public GameObject inventorySlot;
	public GameObject inventoryItem;

	public int slotAmount;
	public List<Item> items = new List<Item>();
	public List<GameObject> slots = new List<GameObject>();


	void Start()
	{
		database = GetComponent<ItemDatabase>();
		slotAmount = 10;
		inventoryPanel = GameObject.Find("Inventory Panel");
		slotPanel = inventoryPanel.transform.Find("Slot Panel").gameObject;

		for(int i = 0; i < slotAmount; i++)
		{
			items.Add(new Item());
			slots.Add(Instantiate(inventorySlot));
			slots[i].transform.SetParent(slotPanel.transform);
			slots[i].GetComponent<InventorySlot>().id = i;
			slots[i].GetComponent<RectTransform>().localScale = Vector2.one;
		}

		AddItem("wood");
		AddItem("iron_ore");
		AddItem("wood");
		AddItem("wood");
		AddItem("wood");
	}


	public void AddItem(int id)
	{
		Item itemToAdd = database.FetchItemByID(id);
		for (int i = 0; i < items.Count; i++)
		{
			if(items[i].ID == -1)
			{
				items[i] = itemToAdd;
				GameObject itemObj = Instantiate(inventoryItem);
				itemObj.transform.SetParent(slots[i].transform);
				itemObj.GetComponent<RectTransform>().localScale = Vector2.one;
				itemObj.transform.position = Vector2.zero;
				itemObj.GetComponent<Image>().sprite = itemToAdd.Sprite as Sprite;
				itemObj.name = itemToAdd.Slug;
				Debug.Log("Added item " + itemToAdd.Slug + " to inventory");
				break;
			}
		}
	}

	public void AddItem(string slug)
	{
		Item itemToAdd = database.FetchItemBySlug(slug);
		if (itemToAdd.Stackable && CheckIfInInventory(itemToAdd))
		{
			for (int i = 0; i < items.Count; i++)
			{
				if(items[i].ID == itemToAdd.ID)
				{
					ItemData data = slots[i].transform.GetChild(0).GetComponent<ItemData>();
					data.amount++;
					data.transform.GetChild(0).GetComponent<Text>().text = data.amount.ToString();
					Debug.Log("Amount of " + slug + " = " + data.amount);
					break;
				}
			}
		}
		else
		{
			for (int i = 0; i < items.Count; i++)
			{
				if(items[i].ID == -1)
				{
					items[i] = itemToAdd;
					GameObject itemObj = Instantiate(inventoryItem);
					itemObj.GetComponent<ItemData>().item = itemToAdd;
					itemObj.GetComponent<ItemData>().slotNum = i;
					itemObj.transform.SetParent(slots[i].transform);
					itemObj.GetComponent<RectTransform>().localScale = Vector2.one;
					itemObj.transform.position = Vector2.zero;
					itemObj.GetComponent<Image>().sprite = itemToAdd.Sprite as Sprite;
					itemObj.name = itemToAdd.Slug;
					Debug.Log("Added item " + itemToAdd.Slug + " to inventory");
					ItemData data = slots[i].transform.GetChild(0).GetComponent<ItemData>();
					data.amount = 1;
					break;
				}
			}
		}
	}

	public bool CheckIfInInventory(Item item)
	{
		for (int i = 0; i < items.Count; i++)
		{
			if (items[i].ID == item.ID)
			{
				Debug.Log("Item in inventory");
				return true;
			}
		}
		return false;
	}
}
