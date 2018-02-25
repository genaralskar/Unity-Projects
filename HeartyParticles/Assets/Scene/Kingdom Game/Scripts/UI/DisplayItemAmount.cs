using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DisplayItemAmount : MonoBehaviour {

	public Item item;
	public Text amountText;
	public Inventory inventory;
	int itemIndex;


	void Start()
	{
		amountText = transform.GetChild(0).GetComponent<Text>();
		itemIndex = inventory.itemList.IndexOf(item);
		inventory.UpdateInventory += DisplayText;
		DisplayText();
	}

	void DisplayText()
	{
		amountText.text = inventory.itemsAmounts[itemIndex].ToString();
	}
	
}
