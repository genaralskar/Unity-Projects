using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogManager : MonoBehaviour
{

	private Queue<string> dialog;
	
	
	// Use this for initialization
	void Start () {
		dialog = new Queue<string>();	
	}
	
	
}
