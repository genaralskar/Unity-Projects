using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu]
public class DestroySO : ActionSO {

	public override void DoAction(GameObject _obj)
	{
		//spawn runner man to blow stuff up
		Debug.Log("Do destroy stuff!");
		Destroy(_obj);
	}

}
