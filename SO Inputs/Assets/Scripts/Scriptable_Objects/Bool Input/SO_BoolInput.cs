using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class SO_BoolInput : ScriptableObject
{

	public bool input
	{
		get { return GetInput(); }
	}

	public abstract bool GetInput();

}
