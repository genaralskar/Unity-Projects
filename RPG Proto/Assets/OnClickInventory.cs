using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(ClickedOn))]
[RequireComponent(typeof(OpenInventoryButton))]
public class OnClickInventory : MonoBehaviour {

	public float interactDistance;
	GameObject player;

	// Use this for initialization
	void Start () {
		GetComponent<ClickedOn>().ClickedOnAction += OnClick;
	}
	
	void OnClick(GameObject _player)
	{
	//	GetComponent<OpenInventoryButton>().OpenCloseInventory();
		player = _player;
		StartCoroutine(DistanceCheck());
	}

	IEnumerator DistanceCheck()
	{
		while(Vector3.Distance(player.transform.position, this.transform.position) > interactDistance)
		{
			if(player.GetComponent<ClickToMove>().destination != this.transform)
			{
				print(player.GetComponent<ClickToMove>().destination);
				StopAllCoroutines();
			}
			yield return new WaitForSeconds(1);
		}
		GetComponent<OpenInventoryButton>().OpenCloseInventory();
		StartCoroutine(PlayerLeftCheck());
		
	}

	IEnumerator PlayerLeftCheck()
	{
		while(player.GetComponent<ClickToMove>().destination == this.transform)
		{
			print(player.GetComponent<ClickToMove>().destination);
			yield return new WaitForSeconds(1);
		}
		GetComponent<OpenInventoryButton>().OpenCloseInventory();
		player = null;
	}
}
