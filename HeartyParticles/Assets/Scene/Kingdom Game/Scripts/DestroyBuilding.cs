using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyBuilding : MonoBehaviour {

	public BuildingManager buildingManager;
	
	// Use this for initialization
	void Start () {
		buildingManager = GetComponent<BuildingManager>();
	}
	
	void Destroy(GameObject _gameObj)
	{
		//check if a worker is in building/is coming to the building
		if(buildingManager.worker != null)
		{
			if(buildingManager.worker.gameObject.activeInHierarchy == false)
			{
				buildingManager.worker.gameObject.SetActive(true);
			}
			buildingManager.worker.SendHome();
		}
		
		Destroy(_gameObj);
	}
}
