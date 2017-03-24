using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveObject : MonoBehaviour {

	bool mouseDown = false;

	//Vector3 screenPoint;
	//Vector3 offset;
	//Vector3 scanPos;
	Vector3 mousePos;

	Plane groundPlane = new Plane(Vector3.up, Vector3.up);

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		//scanPos = gameObject.transform.position;
		/*if(mouseDown)
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
		*/


		if(mouseDown)
		{
			Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
			float f;
			if (groundPlane.Raycast(ray, out f))
			{
				mousePos = ray.GetPoint(f);
			}

			//transform.position = mousePos;

			//Snap object to grid
			transform.position = new Vector3(Mathf.Round(mousePos.x), 1, Mathf.Round(mousePos.z));

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
	}

	void OnMouseDown ()
	{
		//mouseDown = true;
		//screenPoint = Camera.main.WorldToScreenPoint(scanPos);
		//offset = scanPos - Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z));

		/*if(!mouseDown)
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
		*/
	}

	void OnMouseUp () {
		//mouseDown = !mouseDown;
		if(mouseDown)
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
		mouseDown = !mouseDown;
		Debug.Log("mouseDown = " + mouseDown);
	}
}
