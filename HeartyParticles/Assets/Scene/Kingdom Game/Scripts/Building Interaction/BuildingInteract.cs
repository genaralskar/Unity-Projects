using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildingInteract : MonoBehaviour {

	public List<ActionSO> actions;

	void OnMouseDown()
	{
		foreach(ActionSO act in actions)
		{
			//instantiate a panel, with appropriate image
			print("Spawn panel" + act);
		}
	}

	void SpawnPanel(ActionSO _action)
	{
		//panel.gameObj = gameObject;
	}

}
