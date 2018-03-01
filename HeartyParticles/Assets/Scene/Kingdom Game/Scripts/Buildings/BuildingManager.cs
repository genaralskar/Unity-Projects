using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using RoboRyanTron.Unite2017.Events;

[RequireComponent(typeof(GameEventListener), typeof(Animator), typeof(GameEvent))]
public class BuildingManager : MonoBehaviour {

	public Building buildingType;

	public Transform entrance;
	public Transform exit;

	public bool hasWorker = false;
	public WorkerManager worker;

	public Item[] inventory;

	public Animator anims;
	public GameEvent Event;

	//=============================================\\

	public BuildingSO buildingT;
	public UnityAction startAnimAction;

	void Awake()
	{
		Event = ScriptableObject.CreateInstance(typeof(GameEvent)) as GameEvent;
		GetComponent<GameEventListener>().Event = Event;
		GetComponent<GameEventListener>().enabled = true;
	}
	
	// Use this for initialization
	void Start () {
		inventory = new Item[buildingType.inventorySize];
		startAnimAction += printTest;
		anims = GetComponent<Animator>();
		anims.GetBehaviour<OnAnimExit>().Event = Event;
		print(Event);
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
		buildingT.DoWork(startAnimAction);
		anims.SetTrigger("Work");
		StartCoroutine(Work());
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
		//store position/rotation data
		//delete? this gameobject
		//go to the blueprint thing
		//if rightclick, send it back to original pos
	}

	void Destroy()
	{

	}

	void Upgrade()
	{
		//set things to be upgraded
	}

}
