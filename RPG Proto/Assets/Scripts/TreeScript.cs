using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TreeScript : MonoBehaviour {

	GameObject player;
	public float maxDistance;
	public Item item;

	void Start()
	{
		GetComponent<ClickedOn>().ClickedOnAction += OnClick;
	}

	void OnClick(GameObject _player)
	{
		player = _player;
		print("Player set!");
		StopAllCoroutines();
		StartCoroutine(DistanceCheck());
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
		print("cut wood");
		CutWood();
	}

	void CutWood()
	{
		player.GetComponent<Inventory>().AddItem(item, 1);
	}
}
