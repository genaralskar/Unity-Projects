using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProductionBuildingManager : BuildingManage {

	public ProductionBuildingSO buildingType;

	void Produce(WorkerManager _worker)
	{
		_worker = worker;
		worker.gameObject.SetActive(false);
		//start building animation
	}

	void SendWorkerHome() //runs when building animation finishes
	{
		worker.gameObject.SetActive(true);
		FillWorkerInventory(worker);
		worker.SendHome();
	}

	void FillWorkerInventory(WorkerManager _worker)
	{
		foreach(Item item in _worker.inventory)
		{
			_worker.AddItem(buildingType.productionItem);
		}
	}

}
