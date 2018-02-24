using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Inventory))]
public class KeepManager : MonoBehaviour {

	public Inventory inventory;

	//queue might work better than a list here
	public List<GameObject> workers;
	public List<BuildingManager> openBuildings;


	public Transform entrance;
	public Transform exit;

	void Start()
	{
		inventory = GetComponent<Inventory>();
		CheckForOpenBuildings();
		StartCoroutine(WorkerCheck());
	}

	//check for open buildings
	void CheckForOpenBuildings()
	{
		GameObject[] tempGO;
		tempGO = GameObject.FindGameObjectsWithTag("Building");

		foreach(GameObject obj in tempGO)
		{
			BuildingManager tempManage = obj.GetComponent<BuildingManager>();
			if(tempManage)
			{
				if(!tempManage.hasWorker && !openBuildings.Contains(tempManage))
				{
					openBuildings.Add(tempManage);
				//	print("Added " + tempManage + " to openBuildings");
				}
			}
		}
	}

	IEnumerator WorkerCheck()
	{
		while(true)
		{
			CheckForOpenBuildings();
			if(workers.Count > 0 && openBuildings.Count > 0)
			{
				SendWorker(openBuildings[0]);
			}
		//	print("building check");
			yield return new WaitForSeconds(1);
		}
	}

	//send workers
	void SendWorker(BuildingManager _destination)
	{
	//	if(workers.Count > 0)
	//	{
	//		GameObject newWorker = Instantiate(workers[0], exit.position, Quaternion.identity);
			GameObject newWorker = workers[0];
			newWorker.SetActive(true);
			WorkerManager newWorkManager = newWorker.GetComponent<WorkerManager>();
			newWorkManager.destination = _destination.entrance;
			newWorkManager.SetDestination();
			newWorkManager.home = entrance;
			_destination.hasWorker = true;
			openBuildings.RemoveAt(0);
			workers.RemoveAt(0);
	//	}
	}

	//recieve workers, make sure gameobject has workermanager on it/layers?
	public void AddWorker(WorkerManager _worker)
	{
		workers.Add(_worker.gameObject);
		_worker.gameObject.SetActive(false);
	}

	//manage inventory
	public void AddItem(Item _item, int _amount)
	{
		inventory.AddItem(_item, _amount);
	}

	void LoseItem(Item _item, int _amount)
	{

	}
}
