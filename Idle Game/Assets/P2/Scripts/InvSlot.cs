using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InvSlot : MonoBehaviour {

	public int id;
	public ItemDatabase2 database;

	// Use this for initialization
	void Start () {
		gameObject.transform.GetChild(0).GetComponent<SlotItem>().id = id;
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
