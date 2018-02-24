using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActivateBlueprint : MonoBehaviour {

	public GameObject blueprint;

	public void Activate()
	{
		blueprint.SetActive(true);
	}

}
