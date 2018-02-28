﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildingManager : MonoBehaviour {

	public Building buildingType;

	public Transform entrance;
	public Transform exit;

	public bool hasWorker = false;
	public WorkerManager worker;

	public Item[] inventory;


	public BuildingSO buildingT;




	// Use this for initialization
	void Start () {
		inventory = new Item[buildingType.inventorySize];
		buildingT.DoWork();
	}
	
	public void StartWork(WorkerManager _worker)
	{
		worker = _worker;
		_worker.gameObject.SetActive(false);
		StartCoroutine(Work());
	}

	//start working
	IEnumerator Work()
	{
	//	print("Process started");
		yield return new WaitForSeconds(buildingType.productionTime);
		SendWorker();
	//	print("Process finished");
	}

	//send worker with appropriate item(s)
	void SendWorker()
	{
		worker.gameObject.SetActive(true);

		//add items to the worker
		// int i = 0;
		// foreach(Item item in buildingType.itemsToCreate)
		// {
		// 	worker.AddItem(buildingType.itemsToCreate[i]);
		// 	i++;
		// }
		foreach(Item item in worker.inventory)
		{
			worker.AddItem(buildingType.itemsToCreate[0]);
		}
		
		worker.SendHome();
		worker = null;
		hasWorker = false;
	}
}
