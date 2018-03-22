using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Inventory))]
public class KeepManager : MonoBehaviour {

	public Inventory inventory;

	public float deportSpeed = .5f;

	//queue might work better than a list here
	public List<GameObject> workers;
	public List<BuildingManager> openBuildings;



	public Transform entrance;
	public Transform exit;

	void Start()
	{
		inventory = GetComponent<Inventory>();
		CheckForOpenBuildings();
		StartCoroutine(EmptyBuildingCheck());
		StartCoroutine(SendWorkerCheck());
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

	IEnumerator EmptyBuildingCheck()
	{
		while(true)
		{
			CheckForOpenBuildings();
			
		//	print("building check");
			yield return new WaitForSeconds(1);
		}
	}

	IEnumerator SendWorkerCheck()
	{
		//add a check if building is not destroyed<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		while(true)
		{
			if(workers.Count > 0 && openBuildings.Count > 0)
			{
				if(openBuildings[0] == null) //put this in a loop <<<<<<<<<<<<<<<<<<<<<<
				{
					openBuildings.RemoveAt(0);
				}
				else
				{
					SendWorker(openBuildings[0]);
				}
				
			}
			yield return new WaitForSeconds(deportSpeed);
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
	//		_destination.hasWorker = true;
			_destination.HasWorker();
			openBuildings.RemoveAt(0);
			workers.RemoveAt(0);
			WorkerCounter.SubtractInactiveWorker();
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
