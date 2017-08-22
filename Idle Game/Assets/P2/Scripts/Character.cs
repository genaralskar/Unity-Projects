using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using LitJson;
using System.IO;

public class Character : MonoBehaviour {

	public List<Skill> skillDatabase = new List<Skill>();
	private JsonData skillData;

	
	void Start ()
	{
		skillData = JsonMapper.ToObject(File.ReadAllText(Application.dataPath + "/StreamingAssets/Skills.json"));
		ConstructSkillDatabase();
	}

	void ConstructSkillDatabase()
	{
		for(int i = 0; i < skillData.Count; i++)
			{
				skillDatabase.Add(new Skill((int)skillData[i]["id"], skillData[i]["title"].ToString(), skillData[i]["slug"].ToString()));
				Debug.Log("Skill " + skillDatabase[i].Title + " created");
			}
	}

	public Skill FindSkillBySlug(string slug)
	{
		for(int i = 0; i < skillDatabase.Count; i++)
		{
			if(skillDatabase[i].Slug == slug)
			{	
				Debug.Log("Return skill " + skillDatabase[i].Title);
				return skillDatabase[i];
			}
		}
		Debug.Log("Skill with Slug " + slug + " not found");
		return null;
	}
}

public class Skill {
	public int ID { get; set; }
	public string Title { get; set; }
	public int Level { get; set; }
	public int ExpCur { get; set; }
	public int ExpToLevel { get; set; }

	//
	public int ExpDiff { get; set; }
	public string Slug { get; set; }

	public Skill(int id, string title, int level, int expCur, int expToLevel, string slug)
	{
		this.ID = id;
		this.Title = title;
		this.Level = level;
		this.ExpCur = expCur;
		this.ExpToLevel = expToLevel;
		this.Slug = slug;
	}

	public Skill(int id, string title, string slug)
	{
		this.ID = id;
		this.Title = title;
		this.Slug = slug;
		this.Level = 1;
		this.ExpToLevel = 100;
		this.ExpDiff = this.ExpToLevel;
	}

	public void AddExp(int expToAdd)
	{
		this.ExpCur += expToAdd;
		Debug.Log("Current Exp = " + this.ExpCur);
		CheckLevel();
	}

	public void CheckLevel()
	{
		while(this.ExpCur >= this.ExpToLevel)
		{
			Level++;
			this.ExpDiff += this.ExpDiff / 10;
			this.ExpToLevel += this.ExpDiff;

			Debug.Log(this.Title + " level up! Now level " + this.Level);
			Debug.Log("Exp required for next level is " + this.ExpToLevel);
		}
	}
}
