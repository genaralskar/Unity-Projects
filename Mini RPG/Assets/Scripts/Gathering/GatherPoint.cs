using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GatherPoint : ClickableObjectBase, IClickableObject
{

	[SerializeField] private Item gatherItem;
	
	public void OnClicked(PlayerController player)
	{
		if (gatherItem == null)
		{
			Debug.LogWarning("Item for " + this + " is null!");
			return;
		}
		Inventory playerInventory = player.inventory;
		playerInventory.AddItem(gatherItem, 1);
		Debug.Log("Tried adding item " + gatherItem + " to inventory " + playerInventory);
	}
}
