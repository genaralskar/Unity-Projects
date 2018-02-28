using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ActionButton : MonoBehaviour {

	public ActionSO action;
	public GameObject gameObj;

	void ButtonPress()
	{
		action.DoAction(gameObj);
	}

}
