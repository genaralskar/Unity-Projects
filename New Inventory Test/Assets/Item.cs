using UnityEngine;

[System.Serializable]
public class Item {

	public string title = "empty";
	public bool stackable = false;
	public string slug = "empty";
	public int amount = 1;

	public Item(string _slug)
	{
		Item temp = ItemDatabase.Database.FindItemBySlug(_slug);
		if(temp == null) //if can't find item, set to default empty
		{
			this.title = "Empty";
			this.stackable = false;
			this.slug = "empty";
			this.amount = 0;
			return;
		}

		this.title = temp.title;
		this.stackable = temp.stackable;
		this.slug = temp.slug;
	}

}
