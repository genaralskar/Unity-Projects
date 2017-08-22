using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using LitJson;
using System.IO;

public class ItemDatabase : MonoBehaviour {

	public List<Item> database = new List<Item>();
	private JsonData itemData;
	// public Item[] itemArray;

	void Start () {

		itemData = JsonMapper.ToObject(File.ReadAllText(Application.dataPath + "/StreamingAssets/Items.json"));
		ConstructItemDatabase();

		print(database[3].Title);
		
	}

	public Item FetchItemByID(int id)
	{
		for(int i = 0; i < database.Count; i++)
		{
			if(database[i].ID == id)
				return database[i];
		}
		return null;
	}
	
	public Item FetchItemBySlug(string slug)
	{
		for(int i = 0; i < database.Count; i++)
		{
			if(database[i].Slug == slug)
				return database[i];
		}
		return null;
	}

	void ConstructItemDatabase()
	{
		for(int i = 0; i < itemData.Count; i++)
		{
			database.Add(new Item((int)itemData[i]["id"], itemData[i]["title"].ToString(), (bool)itemData[i]["stackable"], itemData[i]["slug"].ToString()));
		}
	}
	
}

public class Item {

	public int ID { get; set; }
	public string Title { get; set; }
	public bool Stackable { get; set; }
	public string Slug { get; set; }
	public int Amount { get; set; }
	public Sprite Sprite { get; set; }

	public Item(int id, string title, bool stackable, string slug)
	{
		this.ID = id;
		this.Title = title;
		this.Stackable = stackable;
		this.Slug = slug;
		this.Sprite = Resources.Load<Sprite>("Sprites/Items/" + slug) as Sprite;
	}

	public Item()
	{
		this.ID = -1;
	}
}
