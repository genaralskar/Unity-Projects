using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InventorySlot : MonoBehaviour {

	public Item item;
	public Image image;
	public Text amountText;

	void Start()
	{
		amountText = transform.GetChild(0).GetComponent<Text>();
		amountText.text = item.title;
	}

	public void UpdateItem()
	{
		if(item.amount > 1)
		{
			amountText.text = item.title +": " + item.amount;
		}
		else
		{
			amountText.text = item.title;
		}
	}

}
