﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class BuildingManager : MonoBehaviour {

	public Building buildingType;

	public Transform entrance;
	public Transform exit;

	public bool hasWorker = false;
	public WorkerManager worker;

	public Item[] inventory;

	//=============================================\\

	public BuildingSO buildingT;
	public UnityAction startAnimAction;




	// Use this for initialization
	void Start () {
		inventory = new Item[buildingType.inventorySize];
		startAnimAction += printTest;
	}
	
	public void StartWork(WorkerManager _worker)
	{
		worker = _worker;
		_worker.gameObject.SetActive(false);
		buildingT.DoWork(startAnimAction);
		StartCoroutine(Work());
	}

	void printTest()
	{
		print("Work started for " + gameObject);
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

	void Move()
	{

	}

	void Destroy()
	{

	}

	void Upgrade()
	{

	}

}