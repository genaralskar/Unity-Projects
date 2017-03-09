using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnerBehavior : MonoBehaviour {

	public GameObject Object;
	public bool on = false;
	public float
		time,
		repeatTime;

	// Use this for initialization
	void Start () {
		InvokeRepeating("SpawnObject", time, repeatTime);
	}
	
	// Update is called once per frame

	void Update () {
		if(Input.GetButtonDown("enter"))
		{
			on = !on;
		}
	}
	void SpawnObject () {
		if(on)
		{
			Instantiate (Object, transform.position, Quaternion.identity);
		}
	}
}
