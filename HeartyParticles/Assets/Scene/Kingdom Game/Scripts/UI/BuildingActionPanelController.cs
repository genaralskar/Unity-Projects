using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

//for the ui stuff
public class BuildingActionPanelController : MonoBehaviour, IPointerExitHandler {

	public List<ActionSO> actions;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	

	public void OnPointerExit(PointerEventData data)
	{
		Destroy(gameObject);
	}
}
