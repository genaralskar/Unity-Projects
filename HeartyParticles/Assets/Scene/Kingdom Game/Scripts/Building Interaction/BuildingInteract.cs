using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class BuildingInteract : MonoBehaviour {

	public List<ActionSO> actions;
	public Image buildingPanel;
	public BuildingInteractUI interactUI;

	void OnMouseDown()
	{

		if(!EventSystem.current.IsPointerOverGameObject())
		{
			interactUI.SpawnPanels(actions, gameObject);
			print("Spawn panel: " + actions);
		}
		// foreach(ActionSO act in actions)
		// {
		// 	//instantiate a panel, with appropriate image
		// //	interactUI.SpawnPanels(actions, buildingPanel);
			
		// 	print("Spawn panel: " + act);
		// }
	}

	void SpawnPanel(ActionSO _action)
	{
		//panel.gameObj = gameObject;
	}

}
