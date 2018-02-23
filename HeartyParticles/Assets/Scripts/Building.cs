using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New Building", menuName = "Game/Building")]
public class Building : ScriptableObject {

	public new string name;

	public Item[] itemsToCreate;
	public Item[] itemsNeeded;

	public float creationTime;

	public int inventorySize;


}
