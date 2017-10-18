using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item {


	public string TITLE { get; set; }
	public bool STACKABLE { get; set; }
	public string SLUG { get; set; }

	public int AMOUNT { get; set; }



	public Item(string _title, bool _stackable, string _slug)
	{
		this.TITLE = _title;
		this.STACKABLE = _stackable;
		this.SLUG = _slug;
		this.AMOUNT = 1;
	}

	public Item(Item _item)
	{
		this.TITLE = _item.TITLE;
		this.STACKABLE = _item.STACKABLE;
		this.SLUG = _item.SLUG;
	}

	public void UpdateAmount(int _amount)
	{
		this.AMOUNT += _amount;
	}

}
