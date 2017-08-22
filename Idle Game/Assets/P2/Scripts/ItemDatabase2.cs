using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using LitJson;
using System.IO;
public class ItemDatabase2 : MonoBehaviour {

	public List<InvItem> database = new List<InvItem>();
	private JsonData itemData;
	
	public List<GatherController> activeGathers = new List<GatherController>();
	public int maxGathers;

	// Use this for initialization
	void Start () {
		
		itemData = JsonMapper.ToObject(File.ReadAllText(Application.dataPath + "/StreamingAssets/Items.json"));
		ConstructItemDatabase();
		maxGathers = 2;
	}
	
	void ConstructItemDatabase()
	{
		for(int i = 0; i < itemData.Count; i++)
		{
			database.Add(new InvItem((int)itemData[i]["id"], itemData[i]["title"].ToString(), itemData[i]["slug"].ToString()));
			//Debug.Log(database.Count);
		}
	}

	public InvItem FindItemByID(int id)
	{
		for(int i = 0; i < database.Count; i++)
		{
			if(database[i].ID == id)
			{
				return database[i];
			}
		}
		Debug.Log("Item with ID " + id + " not found");
		return null;
	}

	public InvItem FindItemBySlug(string slug)
	{
		for(int i = 0; i < database.Count; i++)
		{
			if(database[i].Slug == slug)
			{
				return database[i];
			}
		}
		Debug.Log("Item with slug " + slug + " not found");
		return null;
	}
	
	public string FindSlugByID(int id)
	{
		for(int i = 0; i < database.Count; i++)
		{
			if(database[i].ID == id)
			{
				return database[i].Slug;
			}
		}
		Debug.Log("Item with ID " + id + " not found");
		return null;
	}

	public void AddItem(string slug)
	{
		FindItemBySlug(slug).Amount++;
		Debug.Log("Added Item " + FindItemBySlug(slug).Slug);
	}

	public GatherController FindGatherByID(int index)
	{
		return activeGathers[index];
	}

}

public class InvItem {

	public int ID { get; set; }
	public string Title { get; set; }
	public string Slug { get; set; }
	public int Amount { get; set; }
	public Sprite Sprite { get; set; }
	public SlotItem SlotItem { get; set; }

	public InvItem(int id, string title, string slug)
	{
		this.ID = id;
		this.Title = title;
		this.Slug = slug;
		this.Sprite = Resources.Load<Sprite>("Sprites/Items/" + slug) as Sprite;
	}

	public InvItem()
	{
		this.ID = -1;
	}
}
