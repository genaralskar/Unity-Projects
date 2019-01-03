using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class DialogManager : MonoBehaviour
{

	public GameObject dialogWindow;
	
	private Queue<string> dialog;
	public TextMeshProUGUI nameText;
	public TextMeshProUGUI dialogText;
	public GameObject leftChatHead;
	public RawImage leftChatHeadRawImage;
	public GameObject rightChatHead;
	public RawImage rightChatHeadRawImage;

	public List<GameObject> optionButtons;
	private List<TextMeshProUGUI> optionButtonText;
	
	
	public Animator currentDialog;
	
	
	// Use this for initialization
	void Start () {
		//create list of text fields and add to them for easier access later
		optionButtonText = new List<TextMeshProUGUI>();
		foreach (var button in optionButtons)
		{
			TextMeshProUGUI buttonText = button.GetComponentInChildren<TextMeshProUGUI>();
			if (buttonText != null)
			{
				optionButtonText.Add(buttonText);
			}
			else
			{
				optionButtonText.Add(null);
			}
		}
	}

	public void OpenDialogWindow()
	{
		dialogWindow.SetActive(true);
	}

	public void CloseDialogWindow()
	{
		dialogWindow.SetActive(false);
		currentDialog.GetBehaviour<DialogStateInfoContainer>().manager = null;
		currentDialog = null;
	}

	public void StartConv(Animator newDialog)
	{
		//disconnect previous dialog state info if not already done
		if(currentDialog != null)
			currentDialog.GetBehaviour<DialogStateInfoContainer>().manager = null;
		currentDialog = newDialog;
		//set DialogStateInfoContainer's manager to this
		currentDialog.GetBehaviour<DialogStateInfoContainer>().manager = this;
		//call reset trigger to reset conversation
		newDialog.SetTrigger("Reset");
	}

	//used to trigger which dialog option was chosen
	public void CallOption(int option)
	{
		currentDialog.SetTrigger("Option " + option);
	}

	//sets the text of the dialog box, text of the option buttons, and set proper chatheads
	public void SetOptionBoxes(List<string> newOptions, int newNumOptions, Dialog newDialog)
	{
		//set dialog text and dialog name
		//maybe change to coroutine so text scrolls in
		dialogText.text = newDialog.dialog;
		nameText.text = newDialog.name;
		
		int numOptions = newNumOptions;

		foreach (var button in optionButtons)
		{
			button.gameObject.SetActive(false);
		}
		
		for (int i = 0; i < numOptions; i++)
		{
			optionButtons[i].SetActive(true);
			optionButtonText[i].text = newOptions[i];
		}

		//set proper image for chat heads
		if (newDialog.chatHead == null)
		{
			rightChatHead.SetActive(false);
			leftChatHead.SetActive(false);
		}
		else if (newDialog.chatHeadSide)
		{
			rightChatHead.SetActive(true);
			leftChatHead.SetActive(false);
			rightChatHeadRawImage.texture = newDialog.chatHead;
		}
		else
		{
			leftChatHead.SetActive(true);
			rightChatHead.SetActive(false);
			leftChatHeadRawImage.texture = newDialog.chatHead;
		}
		
		if (!dialogWindow.activeSelf)
		{
			OpenDialogWindow();
		}
	}
	
	
	
}
