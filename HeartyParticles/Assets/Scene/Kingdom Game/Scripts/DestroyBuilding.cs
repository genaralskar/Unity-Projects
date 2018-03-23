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
		ProductionManager _manager = buildingManager.GetComponent<ProductionManager>();
		//check if a worker is in building/is coming to the building
		if(_manager.worker != null)
		{
			if(_manager.worker.gameObject.activeInHierarchy == false)
			{
				_manager.worker.gameObject.SetActive(true);
			}
			_manager.worker.SendHome();
		}
		
		Destroy(_gameObj);
	}
}
