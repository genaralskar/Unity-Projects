using System.Collections;
using System.Collections.Generic;
using JetBrains.Annotations;
using UnityEngine;

[CreateAssetMenu(menuName = "Input/Bool/Down Bool From String")]
public class SOInput_DownBoolFromString : SO_BoolInput
{

	public string InputName;
	
	public override bool GetInput()
	{	
		return (Input.GetButtonDown(InputName));
	}
}
