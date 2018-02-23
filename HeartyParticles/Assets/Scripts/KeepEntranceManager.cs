using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KeepEntranceManager : MonoBehaviour {

	public KeepManager building;

	void OnTriggerEnter(Collider other)
	{
		print("enterd");
		WorkerManager temp = other.GetComponent<WorkerManager>();
		if(temp.destination == transform)
		{
			print("start work");
			building.AddWorker(temp);
			
		}
	}
}
