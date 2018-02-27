using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New Production Building", menuName = "Game/Production Building")]
[System.Serializable]
public class ProductionBuilding : Building2 {

	public List<Item> productionitem;

	
	// public class ProductionBuilding
	// {
	// 	productionitem = new List<Item>;
	// }
	
}
