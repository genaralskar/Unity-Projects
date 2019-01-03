using UnityEngine;
using UnityEngine.Events;

public class QuestStepCheckEvent : MonoBehaviour
{

	public Quest questToCheck;
	public int questStepToCheck;
	public UnityEvent eventOnCheckSuccess;
	public UnityEvent eventOnCheckFail;

	public void CheckQuestStep()
	{
		if (questToCheck.currentQuestStep == questStepToCheck)
		{
			print("Check success");
			eventOnCheckSuccess.Invoke();
		}
		else
		{
			print("Check fail");
			eventOnCheckFail.Invoke();
		}
	}
}
