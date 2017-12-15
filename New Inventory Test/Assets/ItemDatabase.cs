using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemDatabase {

	private static ItemDatabase database;
	private ItemDatabase() {}
	
	public Item[] itemList;

	public static ItemDatabase Database
	{
		get
		{
			if (database == null)
			{
				database = new ItemDatabase();
			}

			return database;
		}
	}

	public Item FindItemBySlug(string _slug)
	{
		int j = 0;
		foreach(var i in ItemDatabase.Database.itemList)
		{
			if(i.slug == _slug)
			{
				return itemList[j];
			}
			j++;
		}
		return null;
	}
	

}
