using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu]
public abstract class BuildingSO : ScriptableObject {

//	public BuildingSO buildingType;
	public new string name;
	public InventorySlot[] needed;
	public Item[] itemsNeeded;
	public int[] numberOfItemsNeeed;

	public abstract void DoWork(UnityAction _animAction);
//	public abstract void DoWork();

}
