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

	public void OpenCloseInventory()
	{
		if(!toggle)
		{
			invImage = Instantiate(inventory);
			InventoryUI invUI = invImage.GetComponent<InventoryUI>();
			invUI.inv = inv;
		//	invUI.invSlot = invSlot;
			invImage.transform.SetParent(transform.parent, false);
			invImage.transform.localPosition = Vector2.zero;
			toggle = true;
		}
		else
		{
			inv.UpdateInventoryAction -= invImage.GetComponent<InventoryUI>().UpdateInventory;
			Destroy(invImage.gameObject);
			toggle = false;
		}
	}

}
