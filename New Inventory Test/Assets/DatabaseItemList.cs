using UnityEngine;

public class DatabaseItemList : MonoBehaviour {

	public Item[] itemList;
	
	void Awake()
	{
		print(ItemDatabase.Database);
		ItemDatabase.Database.itemList = itemList;
	}
}
