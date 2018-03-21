using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ActionButton : MonoBehaviour {

	public ActionSO action;
	public GameObject gameObj;
	Image image;

	public void ButtonPress()
	{
		action.DoAction(gameObj);
	}

	public void PopulatePanel(ActionSO _action, GameObject _gameObj)
	{
		image = gameObject.GetComponent<Image>();

		action = _action;
		gameObj = _gameObj;
		image.sprite = action.artwork;
		print("action = " + action);
		//hover over info, image
	}

}
