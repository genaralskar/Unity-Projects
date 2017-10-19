using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class OpenInventoryButton : MonoBehaviour {

	public Image inventory;
//	public Image invSlot;
	public Inventory inv;
	bool toggle = false;
	Image invImage;
	public Transform inventorySpot;

	public void OpenCloseInventory()
	{
		if(!toggle)
		{
			invImage = Instantiate(inventory);
			InventoryUI invUI = invImage.GetComponent<InventoryUI>();
			invUI.inv = inv;
		//	invUI.invSlot = invSlot;
			invImage.transform.SetParent(inventorySpot, false);
			invImage.transform.localPosition = Vector3.zero;
			toggle = true;
			inv.UpdateInventoryAction += invImage.GetComponent<InventoryUI>().UpdateInventory;
		}
		else
		{
			inv.UpdateInventoryAction = null;
			Destroy(invImage.gameObject);
			toggle = false;
		}
	}

}
