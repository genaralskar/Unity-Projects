using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IncreaseArray : MonoBehaviour {

	//array, not list
	//public int[] list;

	//list, not array
	//public List<int> List = new List<int>();

	//Array.Resize
	public int[] newList;
	
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void ArrayIncrease () {

		//Array.Resize(ref newList, newList.Length + 1);
		//newList[newList.Length] = newList.Length;
		int[] temp = new int[newList.Length + 1];
		newList.CopyTo(temp, 0);
		newList = temp;
		newList[newList.Length - 1] = newList.Length - 1;

		/* im bad at this, ignore this
		list = new int[list.Length + 1];
		list = new int[1];
		list[0]=10;
		Debug.Log(list[0]);
		Debug.Log(list.Length);
		list = AddArrayLength(list);
		list[list.Length - 1] = list.Length;
		*/

		//this uses the list, not array
		//List.Add(List.Count);
	}

	/*static int[] AddArrayLength (int[] x) {
		int[] y;
		y = new int[x.Length + 1];
		for(int i = 0; i < x.Length; i++)
		{
			Debug.Log("x.Length = " + x.Length);
			Debug.Log("i = " + i);
			y[i] = x[i];
		}
		//this maybe?
		list = y.clone();
		return;
	}
	*/
}
