using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
public class WorkerManager : MonoBehaviour {

	public Worker worker;

	public bool returningToKeep = false;

	public Transform destination;

	public Transform home;

	public Item[] inventory;

	public Item inventoryItem;
	public bool hasItem;
	public int inventorySize;


	NavMeshAgent agent;

	void Start()
	{
		inventory = new Item[worker.inventorySize];
	//	inventorySize = worker.inventorySize;
	//	print(inventory.Length + " inventory length");
		agent = GetComponent<NavMeshAgent>();
	//	agent.speed = worker.speed;
		UpdateWorker();
	//	print(agent);
		FindKeep();
	}

	public void FindKeep()
	{
		GameObject tempKeep = GameObject.FindGameObjectWithTag("Keep");
		home = tempKeep.GetComponent<KeepManager>().entrance;
		SendHome();
	//	print("find keep");
	}
	
	public void SetDestination()
	{
	//	print(destination);
	//	print(agent);
		agent.SetDestination(destination.position);
	//	print("destination set");
	}

	[ContextMenu ("Fix Destination")]
	public void FixDestination()
	{
		agent.SetDestination(transform.position);
		agent.SetDestination(destination.position);
	}

	public void SendHome()
	{
		destination = home;
		SetDestination();
	//	print("go home!");
	}

	public void AddItem(Item _item)
	{
		int i = 0;
		foreach(Item item in inventory)
		{
			if(item == null)
			{
				inventory[i] = _item;
			//	print("Item " +_item + " added");
				return;
			}
			i++;
		}
	}

	public void SetHasItem(bool _hasItem)
	{
		hasItem = _hasItem;
	}

	public void UpdateWorker() //set all values for worker here
	{
		agent.speed = worker.speed;
		inventorySize = worker.inventorySize;
		print("updated worker to " + worker);
	}
}
