using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DragObject : MonoBehaviour {

	Vector3
		screenPoint,
		offset,
		scanPos;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

		scanPos = gameObject.transform.position;
		
	}

	void OnMouseDown ()
	{
		screenPoint = Camera.main.WorldToScreenPoint(scanPos);

		offset = scanPos - Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z));
	}

	void OnMouseDrag ()
	{
		//get mouse position
		Vector3 curScreenPoint = new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z);
		Vector3 curPosition = Camera.main.ScreenToWorldPoint(curScreenPoint) + offset;
		//snap object to grid
		transform.position = new Vector3(Mathf.Round(curPosition.x), 1, Mathf.Round(curPosition.z));

		//rotate dragged object
		if(Input.GetKeyDown("space"))
		{
			transform.Rotate(transform.rotation.x, transform.rotation.y+90f, transform.rotation.z);
		}
	}
	
	void OnMouseUp ()
	{
		//spawn object a certain height based on tag
		switch(gameObject.tag)
		{
			case "Resource":
				transform.position = new Vector3(transform.position.x, 0.5f, transform.position.z);
				break;
			case "Conveyor":
				transform.position = new Vector3(transform.position.x, 0.3f, transform.position.z);
				break;
			default:
				break;
		}
	}
}
