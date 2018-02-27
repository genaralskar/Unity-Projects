using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class BuildingBlueprint : MonoBehaviour {

	public static UnityAction ClearBlueprint;

	public GameObject building;
	BuildingManager buildingManager;
	HousingManager housingManager;
	public Item[] reqItems;
	public int[] numReqItems;

	public Inventory inventory;

	public bool canPlace = true;

	RaycastHit hit;
	Ray ray;

	LayerMask mask;

	int colliderCount;

	void Start()
	{
		mask = LayerMask.GetMask("Blueprint", "Building", "Entrance");
		buildingManager = building.GetComponent<BuildingManager>();
		housingManager = building.GetComponent<HousingManager>();
		if(buildingManager)
		{
			reqItems = buildingManager.buildingType.itemsNeeded;
			numReqItems = buildingManager.buildingType.numberOfItemsNeeed;
			print("is a building");
		}
		else if(housingManager)
		{
			reqItems = housingManager.house.itemsNeeded;
			numReqItems = housingManager.house.numberOfItemsNeeded;
			print("is a house");
		}
		ClearBlueprint += ClearBlueprintHandler;
	}

	void Update()
	{
		MoveBuilding();
	}

	void OnTriggerEnter(Collider other)
	{
		canPlace = false;
		colliderCount++;
		print("colliding");
	}
	
	void OnTriggerExit(Collider other)
	{
		colliderCount--;
		if(colliderCount == 0)
			canPlace = true;
	}

	void MoveBuilding()
	{
		//move building to mouse position
		ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		if(Physics.Raycast(ray, out hit, 1000, ~mask)) //~ inverts bitmask
		{
			transform.position = hit.point;
		//	print(hit.point);
		}
	//	print("move object");
	}

	
	void OnMouseOver()
	{
	//	print("Mouse over");
		//left click on object, deactivate this, spawn new building
		if(Input.GetMouseButtonDown(0) && canPlace)
		{
			//add a physics cube check for collisions

			CheckReqItems();
		}

		//right click on object, deactivate this
		if(Input.GetMouseButtonDown(1))
		{
			ClearBlueprint();
		}
	}

	void PlaceBuilding()
	{
		//subract req items from inventory
		Instantiate(building, transform.position, transform.rotation);
		TakeItems();
		gameObject.SetActive(false);
	}

	//for each req item, search through inventory to see if the item is in the inventory
	//if it is, compare it's amount with the amount needed
	//if there is enough, place the building
	//if there is not item needed in inventory, or if there are not enough items, return
	void CheckReqItems()
	{
		// if(!buildingManager)
		// {
		// 	PlaceBuilding();
		// 	return;
		// }


		foreach(Item _item in reqItems)
		{
			if(inventory.itemList.Contains(_item))
			{
				int i = inventory.itemList.IndexOf(_item);
				int j = System.Array.IndexOf(reqItems, _item);
				if(inventory.itemsAmounts[i] >= numReqItems[j])
				{
					print(inventory.itemsAmounts[i] + ", " + numReqItems[j]);
				}
				else
				{
					return;
				}
			}
			else
			{
				return;
			}
		}
	//	int itemCheck = 0;
		//for every item in inventory
		// foreach(Item _item in buildingManager.buildingType.itemsNeeded)
		// {
		// 	int i = 0; //position in needed items list
		// 	//compare to needed item to items in the inventory
		// 	foreach(Item _item2 in inventory.itemList)
		// 	{
		// 		int j = 0; //position in inventory list
		// 		//if the item matches/is in the inventory
		// 		if(_item2 == _item)
		// 		{
		// 			//if amount needed is less than or equal to the amount in the inventory
		// 			if(buildingManager.buildingType.numberOfItemsNeeed[i] <= inventory.itemsAmounts[j])
		// 			{
		// 				//place building
		// 			//	itemCheck++;
		// 			}
		// 			else
		// 			{
		// 				return;
		// 			}
		// 		}
		// 		j++;
		// 	}
		// 	i++;
		// }

	//	print(itemCheck + 1);
	//	if(itemCheck + 1 == buildingManager.buildingType.itemsNeeded.Length)
	//	{
			PlaceBuilding();
	//	}
	}

	void TakeItems()
	{
		foreach(Item _item in reqItems)
		{
			int i = inventory.itemList.IndexOf(_item);
			inventory.LoseItem(_item, numReqItems[System.Array.IndexOf(reqItems, _item)]);
		}
	}

	void ClearBlueprintHandler()
	{
		gameObject.SetActive(false);
	}

	

}
