using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildingEntranceManager : MonoBehaviour {

	public BuildingManager building;

	void OnTriggerEnter(Collider other)
	{
	//	print("enterd");
		WorkerManager temp = other.GetComponent<WorkerManager>();
		if(temp.destination == transform)
		{
		//	print("start work");
			building.WorkStuff(temp);
			
		}
	}
}
