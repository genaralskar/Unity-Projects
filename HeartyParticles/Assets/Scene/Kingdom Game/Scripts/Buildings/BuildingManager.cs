using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using RoboRyanTron.Unite2017.Events;

[RequireComponent(typeof(Animator), typeof(GameEvent))]
public abstract class BuildingManager : MonoBehaviour {

	public Building buildingType;

	public Transform entrance;

	public bool hasWorker = false;
	public WorkerManager worker;

	public Item[] inventory;

	public Animator anims;

	public BuildingManager build;

	//=============================================\\

	public UnityAction startAnimAction;

	void Awake()
	{
		anims = GetComponent<Animator>(); //art will be a prefab, instantiated
	}

	void Start () {
		inventory = new Item[buildingType.inventorySize]; //probs don't need
		startAnimAction += printTest;
		
	//	print(Event);
	}

	public void WorkStuff(WorkerManager _worker)
	{
		build.WorkerStuff(_worker);
	}

	public void HasWorker()
	{
		hasWorker = true;
		anims.SetBool("HasWorker", true);
	}
	
	public void StartWork(WorkerManager _worker)
	{
		worker = _worker;
		_worker.gameObject.SetActive(false);
	//	buildingT.DoWork(startAnimAction);
		anims.SetTrigger("Work");
	//	StartCoroutine(Work());
	}

	public void printTest()
	{
		print("Work finished for " + gameObject);
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
	public void SendWorker()
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
		anims.SetBool("HasWorker", false);
	}

	public T GetManager<T>() //where T : BuildingManager //returns the secondary building manager, like the production manager or housing manager
	{
		return GetComponent<T>();
	}

	public abstract void WorkerStuff(WorkerManager _worker);

}
