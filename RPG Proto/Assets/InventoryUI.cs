using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InventoryUI : MonoBehaviour {

	public Inventory inv;
	public Image invSlot;
	int numberOfSlots;
	public Image[] invSlots;


	void Start()
	{
		inv.UpdateInventoryAction += UpdateInventory;

		numberOfSlots = inv.inventory.Length;
		invSlots = new Image[inv.inventory.Length];
		print(inv.inventory.Length);
		MakeSlots();
	}

	void MakeSlots()
	{
		for(int i = 0; i < numberOfSlots; i++)
		{
			Image temp;
			temp = Instantiate(invSlot);
			temp.transform.SetParent(transform);
			temp.GetComponent<InventorySlot>().item = inv.inventory[i];
			invSlots[i] = temp;
			print(inv.inventory[i]);
		}
	}

	void FillSlots()
	{
		for(int i = 0; i <numberOfSlots; i++)
		{

		}
	}

	public void UpdateInventory()
	{
		print("Update inventory");
		for(int i = 0; i < numberOfSlots; i++)
		{
			invSlots[i].GetComponent<InventorySlot>().item = inv.inventory[i];
			invSlots[i].GetComponent<InventorySlot>().UpdateItem();
		}
	}
	
}
