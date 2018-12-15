using System.Collections;
using System.Collections.Generic;
using UnityEditor.VersionControl;
using UnityEngine;

[CreateAssetMenu(menuName = "Quests/New Quest")]
public class Quest : ScriptableObject
{
	public string questName;
	[TextArea(3, 10)]
	public string questDescription;
	public List<SkillRequirements> skillReqs;
	public int currentQuestStep;
	//list of quest steps
	public List<QuestStep> questSteps;

	public List<QuestReward> rewards;

	public bool complete = false;

	public void IncrementQuestStep(int questStep)
	{
		if (questStep == currentQuestStep)
		{
			currentQuestStep++;
		}
	}
}

[System.Serializable]
public class QuestStep
{
	public string questStepName;
	[TextArea(3, 10)]
	public string quesetStepDescription;
	
	//requirement to complete quest step
	public void CompleteStep(Quest quest)
	{
		if (quest.questSteps[quest.currentQuestStep] == this)
		{
			quest.currentQuestStep++;
		}
	}
}

[System.Serializable]
public class SkillRequirements
{
	public string skillName = "Skill Name";
	public int reqLevel = 1;
}

[System.Serializable]
public class QuestReward
{
	public string reward = "Reward!";
}
