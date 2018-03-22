using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BuildingInteractUI : MonoBehaviour {

//	List<ActionSO> actions;
	public Image actionButton;
	public Image actionContainerPanel;
	public GameObject canvas;


	public void SpawnPanels(List<ActionSO> _actions, BuildingManager _buildManage)
	{
		Image _container = Instantiate(actionContainerPanel);
		_container.transform.SetParent(canvas.transform);
		_container.transform.position = Input.mousePosition;

		//should this be handled in the action container script?
		foreach(ActionSO a in _actions)
		{
			Image _actionButton = Instantiate(actionButton);
			_actionButton.transform.SetParent(_container.transform);
			ActionButton _aB = _actionButton.gameObject.GetComponent<ActionButton>();
			_aB.PopulatePanel(a, _buildManage);
		}
	}
}
