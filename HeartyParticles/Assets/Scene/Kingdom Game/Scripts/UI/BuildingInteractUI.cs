using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BuildingInteractUI : MonoBehaviour {

//	List<ActionSO> actions;
	public GameObject actionPanel;
	public GameObject canvas;

	public void SpawnPanels(List<ActionSO> _actions, Image _parent)
	{
		Image tempPanel = Instantiate(_parent);
		tempPanel.transform.SetParent(canvas.transform);
		tempPanel.transform.position = Input.mousePosition;
		foreach(var i in _actions)
		{
			Instantiate(i);
		}
	}
}
