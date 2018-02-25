using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemDatabase : MonoBehaviour {

	public List<Item> database;
	public static List<Item> itemDatabase;

	void Awake()
	{
		itemDatabase = database;
	}
}
