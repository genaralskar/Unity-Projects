using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogCutscenePlayer : MonoBehaviour
{
    public DialogManager manager;
    public DialogContainer container;

    public void StartConvo()
    {
        manager.StartConv(container);
    }

    public void ChooseOption(int option)
    {
        manager.CallOption(option);
    }
}
