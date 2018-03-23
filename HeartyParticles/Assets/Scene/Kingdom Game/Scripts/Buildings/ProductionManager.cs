using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProductionManager : BuildingManager {

	public bool hasWorker = false;
	public WorkerManager worker;
	public float buildSpeed = 1;

	//get animator from scriptable object

	public override void WorkerStuff(WorkerManager _worker)
	{
		StartWork(_worker);
	}

	public void SetWorker(bool _setTo)
	{
		hasWorker = _setTo;
		anims.SetBool("HasWorker", _setTo);
	}

	public void StartWork(WorkerManager _worker) //gets called when worker arrives at building
	{
		worker = _worker;
		_worker.gameObject.SetActive(false);
		anims.SetTrigger("Work");
	}

	public void FinishWork() //gets called when building animation ends
	{
		worker.gameObject.SetActive(true);
		//worker inventory stuff
		worker.inventoryItem = buildingType.itemToCreate;
		worker.SetHasItem(true);
		worker.SendHome();
		worker = null;
		SetWorker(false);
	}
}
