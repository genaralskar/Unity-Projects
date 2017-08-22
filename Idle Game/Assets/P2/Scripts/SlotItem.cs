using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SlotItem : MonoBehaviour {

	public InvItem item;
	public int amount;
	public int id;
	public ItemDatabase2 database;
	
	

	// Use this for initialization
	void Start () {
		//item = database.FindItemByID(transform.parent.GetComponent<InvSlot>().id);
		item = database.FindItemByID(id);

		GetComponent<Image>().sprite = item.Sprite as Sprite;
		amount = item.Amount;
		transform.GetChild(0).GetComponent<Text>().text = item.Amount.ToString();
		item.SlotItem = this;
		if(item.SlotItem != null)
		{
			Debug.Log("SlotItem assigned to item");
		}
	}

	void Update()
	{
		if(amount != item.Amount)
		{
			amount = item.Amount;
			UpdateAmount();
		}
	}
	

	public void UpdateAmount()
	{
		Transform child;
		child = transform.GetChild(0);
		Debug.Log("child assigned");
		child.GetComponent<Text>().text = item.Amount.ToString();
		Debug.Log("Text updated. New amount is " + item.Amount);
	}

	public void CallTest()
	{
		Debug.Log("Call Test");
		Debug.Log(transform.position);
	}

}


//FindItemByID, use parent id value
//item = item we just found
//FindSlugByID, use item.slug
//use slug to update graphic