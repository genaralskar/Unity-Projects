using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnObject : MonoBehaviour {

	public GameObject Resource;
	

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void SpawnObj ()
	{
		switch(Resource.tag)
		{
			case "Resource":
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
