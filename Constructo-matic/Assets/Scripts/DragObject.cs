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
			screenPoint = Camera.main.WorldToScreenPoint(scanPos);
			offset = scanPos - Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z));
	}
	
	// Update is called once per frame
	void Update () {

		scanPos = gameObject.transform.position;

		/*if(spawned)
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
		*/
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
			//Rounds to nearest 10 by dividing current rotation by 10, rounding, then multiplying by 10
			//because for some reason just adding 90 as a float makes it like 90.000001
			float newYRotation = Mathf.Round((transform.rotation.y + 90f)/10)*10;
			//Debug.Log("transform.rotation.y=" + transform.rotation.y);
			//Debug.Log("newYRotation=" + newYRotation);
			//Debug.Log("Mathf newYRotation=" + (Mathf.Round((transform.rotation.y + 90f)/10)*10));
			transform.Rotate(transform.rotation.x, newYRotation, transform.rotation.z);
		}
	}
	
	void OnMouseUp ()
	{
		//place object at a certain height based on tag
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
