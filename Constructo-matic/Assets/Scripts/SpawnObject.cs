using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnObject : MonoBehaviour {

	public GameObject Resource;

	Vector3
		mousePos,
		worldPos;
	public Vector3 curScreenPoint;

	
	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {

	}

	public void SpawnObj ()
	{

		Ray ray = Camera.main.ScreenPointToRay(mousePos);
		worldPos = Camera.main.ScreenToWorldPoint(mousePos);

		switch(Resource.tag)
		{
			case "Resource":
				//Instantiate (Resource, worldPos, Quaternion.identity);
				//Debug.Log(mousePos);
				Instantiate (Resource, new Vector3( 0, 0.5f, 0), Quaternion.identity);
				break;
			case "Conveyor":
				Instantiate (Resource, new Vector3( 0, 0.3f, 0), Quaternion.identity);
				break;
			default:
				break;
		}
	}
}
