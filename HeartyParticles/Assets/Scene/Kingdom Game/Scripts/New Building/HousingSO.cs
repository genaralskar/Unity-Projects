using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu]
public class HousingSO : BuildingSO {

	public GameObject[] workersToSpawn;

	override public void DoWork()
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
