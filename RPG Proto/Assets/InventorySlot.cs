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
	//	print(item);
		UpdateItem();
	}

	public void UpdateItem()
	{
		if(item.AMOUNT > 1)
		{
			amountText.text = item.TITLE +": " + item.AMOUNT;
		}
		else
		{
			amountText.text = item.TITLE;
		}
	}

}
