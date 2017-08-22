using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GatherController : MonoBehaviour {

	public Slider progressBar;
	public Slider expBar;
	public ItemDatabase2 database;
	public Toggle repeat;
	public Character character;
	public Text skillLevel;
	public int amountToAdd;
	public float timeToComplete;
	private float timeWithSkill;
	public float minGatherSpeed;
	private bool activated = false;
	private float time = 0;
	private string slug;
	private int gathersIndex;


	public int expToAdd;
	public string nodeType;
	public int reqScore;


	public void Update()
	{
		if(activated)
		{
			if(time <= timeWithSkill)
			{
				time += Time.deltaTime;
				//Debug.Log("time = " + time);
				//Debug.Log("completion precent = " + time/timeToComplete);
				progressBar.value = time/timeWithSkill;
			}
			else if(repeat.isOn)
			{
				database.FindItemBySlug(slug).Amount += amountToAdd;
				database.FindItemBySlug(slug).SlotItem.UpdateAmount();
				//database.FindItemBySlug(slug).SlotItem.CallTest();
				character.FindSkillBySlug(nodeType).AddExp(expToAdd);
				ExpBar();
				if(timeWithSkill > minGatherSpeed)
				{
					timeWithSkill = timeToComplete - (timeToComplete * ((float)character.FindSkillBySlug(nodeType).Level * .02f));
				}
				else
				{
					timeWithSkill = minGatherSpeed;
				}
				//timeWithSkill = timeToComplete - (timeToComplete * ((float)character.FindSkillBySlug(nodeType).Level * .01f));
				time = 0;
				Debug.Log("time to complete is " + timeWithSkill);
				Debug.Log("Process Repeats");
			}
			else
			{
				database.FindItemBySlug(slug).Amount += amountToAdd;
				database.FindItemBySlug(slug).SlotItem.UpdateAmount();
				character.FindSkillBySlug(nodeType).AddExp(expToAdd);
				ExpBar();
				Debug.Log("Exp Bar value is " + expBar.value);
				activated = false;
				progressBar.value = 0;
				Debug.Log("Process Finished");
			}
		}		
	}

	public void StartGather(string itemSlug)
	{
		
		if(!activated && character.FindSkillBySlug(nodeType).Level >= reqScore)
		{
			SetActiveGathers();
			timeWithSkill = timeToComplete - (timeToComplete * ((float)character.FindSkillBySlug(nodeType).Level * .02f));
			if(timeWithSkill < minGatherSpeed)
			{
				timeWithSkill = minGatherSpeed;
			}
			slug = itemSlug;
			time = 0;
			Debug.Log("time = " + time);
			Debug.Log("timeWithSkill = " + timeWithSkill);
			activated = true;
		}
		else if(activated)
		{
			activated = false;
			database.activeGathers.RemoveAt(gathersIndex);
		}
	}

	public int GetGearScore(string slug)
	{
		return character.FindSkillBySlug(slug).Level;
	}

	public void ExpBar()
	{
		float expCur = character.FindSkillBySlug(nodeType).ExpCur;
		float expToLevel = character.FindSkillBySlug(nodeType).ExpToLevel;
		float expDiff = character.FindSkillBySlug(nodeType).ExpDiff;
		expBar.value = 1 - (expToLevel - expCur) / expDiff;
		Debug.Log((expToLevel - expCur) + "/" + expDiff);
		Debug.Log("expBar value is " + expBar.value);
		skillLevel.text = "Level: " + character.FindSkillBySlug(nodeType).Level.ToString();
	}

	public void SetActive(bool active)
	{
		activated = active;
		if(!active)
		{
			progressBar.value = 0;
		}
		//repeat.isOn = active;
	}

	// public void SetActiveGathers()
	// {
	// 	Debug.Log("max gathers: " + database.maxGathers);
	// 	if(database.activeGathers.Count > database.maxGathers - 1)
	// 	{
	// 		Debug.Log("active gathers: " + database.activeGathers.Count);
	// 		Debug.Log("max gathers: " + database.maxGathers);
	// 		database.activeGathers.Add(this);
	// 		database.activeGathers[0].SetActive(false);
	// 		database.activeGathers.RemoveAt(0);
	// 		for(int i = 0; database.activeGathers.Count > i; i++)
	// 		{
	// 			database.activeGathers[i].gathersIndex = i;
	// 		}
	// 	}
	// 	else
	// 	{
	// 		Debug.Log("item added to activeGathers");
	// 		database.activeGathers.Add(this);
	// 		gathersIndex = database.activeGathers.Count - 1;
	// 	}
	// }


	//set this up, figure it out
	public void SetActiveGathers ()
	{
		
	}
}
