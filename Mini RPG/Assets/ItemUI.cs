using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class ItemUI : MonoBehaviour, IDragHandler, IBeginDragHandler, IEndDragHandler, IPointerClickHandler
{

	private Vector3 startPos;
	private Vector2 dragOffset;
	private Vector2 spriteSize;
	private Transform origParent;
	public GameObject inventorySlot;
	
	
	public void OnDrag(PointerEventData eventData)
	{
		transform.position = eventData.position;
	}

	public void OnBeginDrag(PointerEventData eventData)
	{
		startPos = transform.position;
		origParent = transform.parent;
		transform.SetParent(transform.parent.parent);
		GetComponent<CanvasGroup>().blocksRaycasts = false;
	}

	public void OnEndDrag(PointerEventData eventData)
	{
		transform.position = startPos;
		transform.SetParent(origParent);
		GetComponent<CanvasGroup>().blocksRaycasts = true;
	}

	public void OnPointerClick(PointerEventData e)
	{
		//item use stuff (equiping, eating, etc)
		print("Clicked on " + this);
		if (e.button == PointerEventData.InputButton.Left)
		{
			//access list of available actions
			//do the first action
			print("doing left click action");
			print(inventorySlot.GetComponent<InventorySlotUI>().item.actions.Count);
			if (inventorySlot.GetComponent<InventorySlotUI>().item.actions.Count > 0)
			{
				inventorySlot.GetComponent<InventorySlotUI>().item.actions[0].Action(this);
			}
		}

		if (e.button == PointerEventData.InputButton.Right)
		{
			//show ui list of all available actions
		}
		
	}

	public InventorySlotUI GetInventorySlot()
	{
		return inventorySlot.GetComponent<InventorySlotUI>();
	}
}
