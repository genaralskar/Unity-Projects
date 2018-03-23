using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New Building", menuName = "Game/Building")]
public class Building : ScriptableObject {

	public new string name;

	public Item[] itemsNeeded;
	public int[] numberOfItemsNeeed;

	public Item itemToCreate;
	public float productionTime;
	

	public int inventorySize;


}
