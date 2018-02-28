using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu]
public class ProductionBuildingSO : BuildingSO {

	public Item productionItem;
	public float productionTime;

	void Awake()
	{
	//	DoWork += Work;
		Debug.Log("assigned");
	}

	override public void DoWork()
	{
		Debug.Log("Working!");
	}

	void StartProduction()
	{
		//start animation
			//needs animation controller
		//on end animation additems
	}

	void AddItemsToWorker()
	{
		//fill workers inventory with produced item
		//send worker home
	}

}
