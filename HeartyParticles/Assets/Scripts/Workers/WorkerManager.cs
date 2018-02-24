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


	NavMeshAgent agent;

	void Start()
	{
		inventory = new Item[worker.inventorySize];
	//	print(inventory.Length + " inventory length");
		agent = GetComponent<NavMeshAgent>();
		agent.speed = worker.speed;
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
}
