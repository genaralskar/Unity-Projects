using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerGather : MonoBehaviour {

	public Transform destination;
	Transform previousDestination;

	IEnumerator DistanceCheck()
	{
		destination = GetComponent<ClickToMove>().destination;
		while(true)
		{
			destination = GetComponent<ClickToMove>().destination;
			yield return new WaitForSeconds(1);
			if(previousDestination != destination)
			{
				StopAllCoroutines();
			}
		}
	}

	IEnumerator Gather()
	{
		yield return null;
	}

}
