using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using LitJson;
using System.IO;

public class ItemDatabase : MonoBehaviour {

	public static List<Item> database = new List<Item>();
	JsonData itemData;

	// Use this for initialization
	void Start () {
		itemData = JsonMapper.ToObject(File.ReadAllText(Application.dataPath + "/StreamingAssets/Items.json"));
		ConstructItemDatabase();
	}
	
	void ConstructItemDatabase()
	{
		for(int i = 0; i < itemData.Count; i++)
		{
			database.Add(new Item(itemData[i]["title"].ToString(), (bool)itemData[i]["stackable"], itemData[i]["slug"].ToString()));
			print(database[i].TITLE + " created");
		}
	}

	public static Item FindItemBySlug(string _slug)
	{
		foreach(Item i in ItemDatabase.database)
		{
			if(i.SLUG == _slug)
			{
				return i;
			}
		}
		return null;
	}
}
