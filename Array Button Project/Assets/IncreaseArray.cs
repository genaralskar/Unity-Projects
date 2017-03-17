using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IncreaseArray : MonoBehaviour {

	public int[] list;

	//public List<int> List = new List<int>();
	
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void ArrayIncrease () {
		//list = new int[list.Length + 1];
		list = new int[1];
		list[0]=10;
		Debug.Log(list[0]);
		Debug.Log(list.Length);
		list = AddArrayLength(list);
		list[list.Length - 1] = list.Length;

		//List.Add(List.Count);
	}

	static int[] AddArrayLength (int[] x) {
		int[] y;
		y = new int[x.Length + 1];
		for(int i = 0; i < x.Length; i++)
		{
			
			Debug.Log("x.Length = " + x.Length);
			Debug.Log("i = " + i);
			y[i] = x[i];
			
		}
		list = y.clone();
	}
}
