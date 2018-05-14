using System.Collections;
using System.Collections.Generic;
using JetBrains.Annotations;
using UnityEngine;
using UnityEngine.XR.WSA.Persistence;

[CreateAssetMenu(menuName = "Input/Bool/Up Bool From String")]
public class SOInput_UpBoolFromString : SO_BoolInput
{

	public string InputName;

	public new bool input
	{
		get { return GetInput(); }
	}

	public override bool GetInput()
	{	
		return (Input.GetButtonUp(InputName));
	}
}
