using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerOpenInventory : MonoBehaviour {

	OpenInventoryButton openInventory;
	ClickToMove clicker;

	public Transform inventorySpot;
	Image invImage;
	Image inventoryPanel;
	Inventory inv;
	bool inventoryOpened;


	void Start ()
	{
		clicker = GetComponent<ClickToMove>();
		clicker.ClickedAction += Clicked;
	}
	
	void Clicked(GameObject _target)
	{
		if(_target.transform != clicker.destination && _target.GetComponent<OpenInventoryButton>() != null)
		{
			
		}
	}

	IEnumerator DistanceCheck()
	{
		yield return null;
	}

	public void OpenInventory()
	{
		invImage = Instantiate(inventoryPanel);
		InventoryUI invUI = invImage.GetComponent<InventoryUI>();
		invUI.inv = inv; //sets instantiated inventory's inventory to this inventory
	//	invUI.openButton = this;
	
		invImage.transform.SetParent(inventorySpot, false);
		invImage.transform.localPosition = Vector3.zero;
		inventoryOpened = true;
		inv.UpdateInventoryAction += invImage.GetComponent<InventoryUI>().UpdateInventory;
	}

	public void CloseInventory()
	{
		inv.UpdateInventoryAction = null;
		Destroy(invImage.gameObject);
		inventoryOpened = false;
	}
}
