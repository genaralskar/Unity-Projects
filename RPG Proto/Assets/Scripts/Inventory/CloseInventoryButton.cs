using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CloseInventoryButton : MonoBehaviour {

	OpenInventoryButton openButton;

	// Use this for initialization
	void Start () {
		openButton = transform.parent.GetComponent<InventoryUI>().openButton;
	}
	
	public void CloseInventory()
	{
		openButton.OpenCloseInventory();
	}
}
