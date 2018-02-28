using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[System.Serializable]
public abstract class ActionSO : ScriptableObject {

	public new string name;
	public string description;
	public Sprite artwork;

	public abstract void DoAction(GameObject _obj);

}
