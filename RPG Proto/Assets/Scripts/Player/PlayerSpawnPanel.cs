using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerSpawnPanel : MonoBehaviour {

	ClickToMove clicker;

	Transform inventorySpot;
	Image panel;
	Image tempPanel;
	bool inventoryOpened;


	// Use this for initialization
	void Start () {
		clicker = GetComponent<ClickToMove>();
		clicker.ClickedAction += Clicked;
	}

	void Clicked(GameObject _target)
	{
		if(!inventoryOpened)
		{
			OpenPanel();
		}
		else
		{
			ClosePanel();
		}
	}
	
	void OpenPanel()
	{
		tempPanel = Instantiate(panel);

		tempPanel.transform.SetParent(inventorySpot, false);
		tempPanel.transform.localPosition = Vector3.zero;
		inventoryOpened = true;
	}

	void ClosePanel()
	{
		Destroy(tempPanel.gameObject);
		inventoryOpened = false;
	}
}
