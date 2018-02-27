using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActivateBlueprint : MonoBehaviour {

	public GameObject blueprint;

	public void Activate()
	{
		if(BuildingBlueprint.ClearBlueprint != null)
			BuildingBlueprint.ClearBlueprint();

		blueprint.SetActive(true);
	}

}
