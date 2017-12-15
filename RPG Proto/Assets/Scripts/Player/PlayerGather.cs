using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[RequireComponent(typeof(ClickToMove))]
[RequireComponent(typeof(Inventory))]
public class PlayerGather : MonoBehaviour {

	public Transform destination;
	Gather resource;
	ClickToMove clicker;
	Inventory inventory;

	void Start()
	{
		
		clicker = GetComponent<ClickToMove>();
		clicker.ClickedAction += Clicked;
		inventory = GetComponent<Inventory>();
	}

	void Clicked(GameObject _target)
	{
		if(_target.transform != destination && _target.GetComponent<Gather>() != null) //if target has a gather componenet
		{
			destination = _target.transform;
			resource = _target.GetComponent<Gather>();
			StopAllCoroutines();
			StartCoroutine(DistanceCheck());
		}
	}

	IEnumerator DistanceCheck()
	{
		while(Vector3.Distance(destination.position, transform.position) > resource.maxDistance)
		{
			if(destination != clicker.destination) //if player moves/changes destination
			{
			//	print("destination changed");
				StopGather();
			}
			yield return new WaitForSeconds(1);
		}
		StartCoroutine(Gather());
	}

	IEnumerator Gather()
	{
		while(clicker.destination == destination)
		{
			if(inventory.FindItemByTitle("Empty") == null && inventory.FindItemByTitle(resource.item) != null && inventory.FindItemByTitle(resource.item).STACKABLE) //if inventory is full, the item is stackable and in the player inventory
			{
				inventory.AddItem(resource.item, resource.amountPerGather);
				print("Added " + resource.amountPerGather + " " + resource.item + " to inventory");
			}
			else if(inventory.FindItemByTitle("Empty") != null)
			{
				inventory.AddItem(resource.item, resource.amountPerGather);
				print("Added " + resource.amountPerGather + " " + resource.item + " to inventory");
			}
			else if(inventory.FindItemByTitle("Empty") == null)
			{
				print("Inventory full");
				StopGather();
			}
			yield return new WaitForSeconds(1);
		}
		StopGather();
	}

	void StopGather()
	{
		print("stopping gather");
		destination = null;
		resource = null;
		StopAllCoroutines();
	}

}
