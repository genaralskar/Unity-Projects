﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class UnityEventOnClick : ClickableObjectBase, IClickableObject
{
	
	public UnityEvent Event;
	
	public void OnClicked(PlayerController player)
	{
		Event.Invoke();
	}
}
