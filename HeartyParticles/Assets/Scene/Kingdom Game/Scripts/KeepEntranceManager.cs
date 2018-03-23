using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KeepEntranceManager : MonoBehaviour {

	public KeepManager building;

	void OnTriggerEnter(Collider other)
	{
	//	print("enterd");
		WorkerManager temp = other.GetComponent<WorkerManager>();
		if(temp.destination == transform)
		{
			if(temp.hasItem)
			{
				print("Adding items to inventory");
				building.AddItem(temp.inventoryItem, temp.inventorySize);
				temp.inventoryItem = null;
				temp.SetHasItem(false);
				print("Added items!");
			}


			// if(temp.inventory != null)
			// {
			// //	print("non null inventory");
			// 	int i = 0;
			// 	foreach(Item item in temp.inventory)
			// 	{
			// 		if(item != null)
			// 		{
			// 		//	print("in the foreach loop");
			// 			building.AddItem(item, 1);
			// 			temp.inventory[i] = null;
			// 		//	print("added item");
			// 		}
			// 		i++;
			// 	}
			// }

			building.AddWorker(temp);
			WorkerCounter.AddInactiveWorker();
			
		}
	}
}
