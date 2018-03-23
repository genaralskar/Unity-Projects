using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HousingManager : MonoBehaviour {

	public Housing house;
	
	public Transform exit;

	public List<GameObject> workers;

	void Start()
	{
		foreach(GameObject obj in house.workers)
		{
			GameObject _worker = Instantiate(obj, exit.position, Quaternion.identity);
			workers.Add(_worker);

			WorkerCounter.AddWorker();
		//	GameObject tempWorker = Instantiate(obj, exit.position, Quaternion.identity);
		//	tempWorker.GetComponent<WorkerManager>().FindKeep();

		}
	}

	public void UpgradeWorker(Worker _workType)
	{
		foreach(var worker in workers)
		{
			worker.GetComponent<WorkerManager>().worker = _workType;
			worker.GetComponent<WorkerManager>().UpdateWorker();
		}
	}
}
