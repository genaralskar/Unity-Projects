using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[System.Serializable]
public class ActionSO : ScriptableObject {

	public new string name;

	public UnityAction DoAction;

}
