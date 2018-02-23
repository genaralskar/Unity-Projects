using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New Worker", menuName = "Game/Worker")]
public class Worker : ScriptableObject {

	public new string name;

	public int inventorySize;

}
