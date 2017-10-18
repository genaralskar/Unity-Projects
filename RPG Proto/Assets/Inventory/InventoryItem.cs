using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class InventoryItem : MonoBehaviour, IDragHandler, IEndDragHandler {

	public Item item;
//	public Sprite image;
	public Text amountText;

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
		GetComponent<CanvasGroup>().blocksRaycasts = false;
    }

    public void OnEndDrag(PointerEventData eventData)
    {
        GetComponent<CanvasGroup>().blocksRaycasts = true;
    }
}
