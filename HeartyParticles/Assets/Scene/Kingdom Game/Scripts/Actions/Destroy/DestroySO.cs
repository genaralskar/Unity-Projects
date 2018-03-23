using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu]
public class DestroySO : ActionSO {

	public override void DoAction(BuildingManager _obj) //send building manager instead of gameobject
	{
		//spawn runner man to blow stuff up
		Debug.Log("Do destroy stuff!");
		Destroy(_obj);
	}

	void Destroy(BuildingManager buildingManager)
	{
		WorkerManager _worker = buildingManager.GetComponent<ProductionManager>().worker;

		if(_worker != null)
		{
			if(_worker.gameObject.activeInHierarchy == false)
			{
				_worker.gameObject.SetActive(true);
			}
			_worker.SendHome();
		}
		
		Destroy(buildingManager.gameObject);
	}

}
