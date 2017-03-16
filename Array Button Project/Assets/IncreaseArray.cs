using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IncreaseArray : MonoBehaviour {

	//public int[] list;

	public List<int> List = new List<int>();
	
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void ArrayIncrease () {
		//list = new int[list.Length + 1];
		//list[list.Length - 1] = list.Length;

		List.Add(List.Count);
	}
}
