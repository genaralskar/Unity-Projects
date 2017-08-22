using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UIController : MonoBehaviour {

	public Image gatherPanel;
	public Image craftingPanel;
	public Image inventoryPanel;


	

	public void ChangeScreen(int screen)
	{
		CanvasGroup gatherPanelGroup = gatherPanel.gameObject.GetComponent<CanvasGroup>();
		CanvasGroup inventoryPanelGroup = inventoryPanel.gameObject.GetComponent<CanvasGroup>();
		CanvasGroup craftingPanelGroup = craftingPanel.gameObject.GetComponent<CanvasGroup>();


		switch(screen)
		{
			case 0:
				//gatherPanel.gameObject.SetActive(true);
				gatherPanelGroup.alpha = 1;
				gatherPanelGroup.interactable = true;
				gatherPanelGroup.blocksRaycasts = true;
				//craftingPanel.gameObject.SetActive(false);
				craftingPanelGroup.alpha = 0;
				craftingPanelGroup.interactable = false;
				craftingPanelGroup.blocksRaycasts = false;
				//inventoryPanel.gameObject.SetActive(false);
				inventoryPanelGroup.alpha = 0;
				inventoryPanelGroup.interactable = false;
				inventoryPanelGroup.blocksRaycasts = false;
				break;
			case 1:
				//gatherPanel.gameObject.SetActive(false);
				gatherPanelGroup.alpha = 0;
				gatherPanelGroup.interactable = false;
				gatherPanelGroup.blocksRaycasts = false;
				//craftingPanel.gameObject.SetActive(true);
				craftingPanelGroup.alpha = 1;
				craftingPanelGroup.interactable = true;
				craftingPanelGroup.blocksRaycasts = true;
				//inventoryPanel.gameObject.SetActive(false);
				inventoryPanelGroup.alpha = 0;
				inventoryPanelGroup.interactable = false;
				inventoryPanelGroup.blocksRaycasts = false;
				break;
			case 2:
				//gatherPanel.gameObject.SetActive(false);
				gatherPanelGroup.alpha = 0;
				gatherPanelGroup.interactable = false;
				gatherPanelGroup.blocksRaycasts = false;
				//craftingPanel.gameObject.SetActive(false);
				craftingPanelGroup.alpha = 0;
				craftingPanelGroup.interactable = false;
				craftingPanelGroup.blocksRaycasts = false;
				//inventoryPanel.gameObject.SetActive(true);
				inventoryPanelGroup.alpha = 1;
				inventoryPanelGroup.interactable = true;
				inventoryPanelGroup.blocksRaycasts = true;
				break;
		}
	}
}
