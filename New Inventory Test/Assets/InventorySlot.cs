using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InventorySlot : MonoBehaviour {

	public int slotID = 0;
	public Item item;
	public Text amountText;

	void Awake()
	{
		amountText = transform.GetChild(0).GetComponent<Text>();
	}

	public void UpdateAmount()
	{
	//	print(item.amount);
		amountText.text = item.amount.ToString();
		print("Item amount changed to " + item.amount);
	}

}
