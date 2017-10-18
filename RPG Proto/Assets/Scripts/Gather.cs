using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[RequireComponent(typeof(ClickedOn))]
public class Gather : MonoBehaviour {

	GameObject player;
	public float maxDistance = 2;
	public string item;
	public int amount;

	void Start()
	{
		GetComponent<ClickedOn>().ClickedOnAction += OnClick;
	}

	void OnClick(GameObject _player)
	{
		if(Vector3.Distance(_player.transform.position, this.transform.position) < maxDistance)
		{
			StartGather();
		}
		else if(_player.GetComponent<ClickToMove>().destination != this.transform)
		{
			player = _player;
			print("Player set!");
			print("start thing");
			StopAllCoroutines();
			StartCoroutine(DistanceCheck());
		}
		
	}

	IEnumerator DistanceCheck()
	{
		while(Vector3.Distance(player.transform.position, transform.position) > maxDistance)
		{
			print("Player too far");
			print(Vector3.Distance(player.transform.position, transform.position));
			yield return new WaitForSeconds(1f);
			if(player.GetComponent<ClickToMove>().destination != transform)
			{
				print("Player changed destination");
				StopAllCoroutines();
			}
				
		}
		print("gathering " + item);
		StartGather();
	}

	void StartGather()
	{
		player.GetComponent<Inventory>().AddItem(item, amount);
	}
}
