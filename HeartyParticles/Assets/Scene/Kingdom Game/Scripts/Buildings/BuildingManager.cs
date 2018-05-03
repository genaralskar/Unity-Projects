using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using RoboRyanTron.Unite2017.Events;

[RequireComponent(typeof(Animator))]
public abstract class BuildingManager : MonoBehaviour {

	public Building buildingType;
	public Transform entrance;

	public Item[] inventory;

	public Animator anims;

	public BuildingManager build;

	//=============================================\\

	public UnityAction startAnimAction;

	void Awake()
	{
		if (anims == null)
		{
			anims = GetComponent<Animator>(); //art will be a prefab, instantiated
		}
		
	}

	void Start () {
	//	inventory = new Item[buildingType.inventorySize]; //probs don't need
		startAnimAction += printTest;
		
	//	print(Event);
	}

	public void WorkStuff(WorkerManager _worker)
	{
		build.WorkerStuff(_worker);
	}

	public void printTest()
	{
		print("Work finished for " + gameObject);
	}

	public T GetManager<T>() //where T : BuildingManager //returns the secondary building manager, like the production manager or housing manager
	{
		return GetComponent<T>();
	}

	public abstract void WorkerStuff(WorkerManager _worker);

}
