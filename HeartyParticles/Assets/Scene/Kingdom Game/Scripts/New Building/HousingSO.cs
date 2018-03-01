using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu]
public class HousingSO : BuildingSO {

	public GameObject[] workersToSpawn;

	override public void DoWork(UnityAction _animAction)
	{
		SpawnWorkers();
	}

	void SpawnWorkers()
	{
		foreach(GameObject w in workersToSpawn)
		{
			Instantiate(w);
		}
	}

}
