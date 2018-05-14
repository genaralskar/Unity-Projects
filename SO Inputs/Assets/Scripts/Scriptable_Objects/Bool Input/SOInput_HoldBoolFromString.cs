using System.Collections;
using System.Collections.Generic;
using JetBrains.Annotations;
using UnityEngine;

[CreateAssetMenu(menuName = "Input/Bool/Hold Bool From String")]
public class SOInput_HoldBoolFromString : SO_BoolInput
{

	public string InputName;
	
	public override bool GetInput()
	{	
		return (Input.GetButton(InputName));
	}
}
