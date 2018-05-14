using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Input/Float/Float From String Input")]
public class SOInput_FloatFromString : SO_FloatInput {

	public string InputName;
    	
	public override float GetInput()
	{
		return (Input.GetAxis(InputName));
	}
	
}
