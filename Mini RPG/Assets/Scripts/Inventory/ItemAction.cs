using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public abstract class ItemAction : ScriptableObject
{
    public abstract void Action(ItemUI itemUI);
}
