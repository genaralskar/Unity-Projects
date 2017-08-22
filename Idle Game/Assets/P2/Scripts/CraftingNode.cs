using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CraftingNode : MonoBehaviour {


	public ItemDatabase2 database;
	public Slider progressBar;
	public Image itemSlot1;
	public Image itemSlot2;
	public string item1Slug;
	public int item1Amount;
	public string item2Slug;
	public int item2Amount;
	public string itemToCraft;
	public float timeToCraft;
	public bool crafting;
	private float timerTime;

	// Use this for initialization
	void Start () {
		itemSlot1.gameObject.GetComponent<SlotItem>().id = database.FindItemBySlug(item1Slug).ID;
		SlotItem slotItem2 = itemSlot2.gameObject.GetComponent<SlotItem>();
		Debug.Log("slotItem2 id is " + slotItem2.id);
		slotItem2.id = database.FindItemBySlug(item2Slug).ID;
	}
	
	// Update is called once per frame
	void Update () {
		if(crafting)
			{
				if(timerTime <= timeToCraft)
				{
					timerTime += Time.deltaTime;
					progressBar.value = timerTime/timeToCraft;
					Debug.Log(progressBar.value);
				}
				else
				{
					database.FindItemBySlug(itemToCraft).Amount++;
					crafting = false;
					progressBar.value = 0;
				}
			}
	}

	public void StartCrafting()
	{
		if(!crafting && itemSlot1.gameObject.GetComponent<SlotItem>().amount >= item1Amount && itemSlot2.gameObject.GetComponent<SlotItem>().amount >= item2Amount)
		{
			Debug.Log("Crafting started");
			database.FindItemBySlug(item1Slug).Amount -= item1Amount;
			database.FindItemBySlug(item2Slug).Amount -= item2Amount;
			crafting = true;
			timerTime = 0;
		}
	}
}
