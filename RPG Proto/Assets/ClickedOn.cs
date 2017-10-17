using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
public class ClickedOn : MonoBehaviour {

	public Action<GameObject> ClickedOnAction;

	public void Clicked(GameObject player)
	{
		if(ClickedOnAction != null)
			ClickedOnAction(player);
	//	print("clicked");
	}
}
