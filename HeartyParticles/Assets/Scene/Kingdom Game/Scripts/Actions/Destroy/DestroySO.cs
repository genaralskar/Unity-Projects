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
		

		if(buildingManager.worker != null)
		{
			if(buildingManager.worker.gameObject.activeInHierarchy == false)
			{
				buildingManager.worker.gameObject.SetActive(true);
			}
			buildingManager.worker.SendHome();
		}
		
		Destroy(buildingManager.gameObject);
	}

}
