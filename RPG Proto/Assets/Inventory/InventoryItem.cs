using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class InventoryItem : MonoBehaviour, IDragHandler, IEndDragHandler, IBeginDragHandler {

	public Item item;
//	public Sprite image;
	public Text amountText;
	public Transform origParent;

	void Start()
	{
		GetComponent<Image>().sprite = Resources.Load<Sprite>("Sprites/Items/" + item.SLUG);
		amountText = transform.GetChild(0).GetComponent<Text>();

		UpdateAmount();
	}

	public void UpdateAmount()
	{
		GetComponent<Image>().sprite = Resources.Load<Sprite>("Sprites/Items/" + item.SLUG);
		if(item.AMOUNT < 2)
		{
			amountText.text = item.TITLE;
		}
		else
		{
			amountText.text = item.TITLE + " " + item.AMOUNT.ToString();
		}
	}

	

    public void OnDrag(PointerEventData eventData)
    {
        this.transform.position = eventData.position;
    }

    public void OnEndDrag(PointerEventData eventData)
    {
		transform.SetParent(origParent);
		transform.localPosition = Vector3.zero;
        GetComponent<CanvasGroup>().blocksRaycasts = true;
    }

    public void OnBeginDrag(PointerEventData eventData)
    {
        origParent = transform.parent;
		transform.parent = transform.parent.parent;
		GetComponent<CanvasGroup>().blocksRaycasts = false;
    }
}
