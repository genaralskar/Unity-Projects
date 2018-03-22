using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ActionButton : MonoBehaviour {

	public ActionSO action;
	public BuildingManager buildManage;
	Image image;

	public void ButtonPress()
	{
		action.DoAction(buildManage);
	}

	public void PopulatePanel(ActionSO _action, BuildingManager _buildManage)
	{
		image = gameObject.GetComponent<Image>();

		action = _action;
		buildManage = _buildManage;
		image.sprite = action.artwork;
		print("action = " + action);
		//hover over info, image
	}

}
