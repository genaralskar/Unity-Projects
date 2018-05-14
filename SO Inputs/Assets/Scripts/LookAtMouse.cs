using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LookAtMouse : MonoBehaviour
{

	public LayerMask RaycastLayers;
	
	// Update is called once per frame
	void Update ()
	{
		RaycastHit hit;
		if (Physics.Raycast(Camera.main.ScreenPointToRay(Input.mousePosition), out hit, 10000 , RaycastLayers))
		{
			Vector3 lookAt = hit.point;
			lookAt.y = transform.position.y;
			
			transform.LookAt(lookAt);
		}
	}
}
