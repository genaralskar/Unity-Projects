using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class ItemData : MonoBehaviour, IBeginDragHandler, IDragHandler, IEndDragHandler {

	public Item item;
	public int amount;
	public int slotNum;


	private Inventory inv;

	void Start ()
	{
		inv = GameObject.Find("Inventory").GetComponent<Inventory>();
	}

	public void OnBeginDrag(PointerEventData eventData)
	{
		if(item != null)
		{
			this.transform.SetParent(this.transform.parent.parent);
			this.transform.position = eventData.position;
			GetComponent<CanvasGroup>().blocksRaycasts = false;
		}
	}

	public void OnDrag(PointerEventData eventData)
	{
		if(item != null)
		{
			this.transform.position = eventData.position;
		}
	}

	public void OnEndDrag(PointerEventData eventData)
	{
		this.transform.SetParent(inv.slots[slotNum].transform);
		this.transform.position = inv.slots[slotNum].transform.position;
		GetComponent<CanvasGroup>().blocksRaycasts = true;
	}

}
