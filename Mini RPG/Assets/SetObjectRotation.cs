using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetObjectRotation : MonoBehaviour
{
    [Tooltip("The object will cycle through the rotations in the order of the list")]
    public List<Vector3> rots;

    public bool includeStartPos = true;
    private Quaternion startRot;
    private int currentRot = 0;

    private void Awake()
    {
        if (includeStartPos)
        {
            startRot = transform.rotation;
        }
    }

    public void NextRotation()
    {
        if (currentRot == rots.Count && includeStartPos)
        {
            transform.rotation = startRot;
            currentRot = 0;
        }
        else if (currentRot == rots.Count)
        {
            currentRot = 0;
        }
        else
        {
            transform.rotation = Quaternion.Euler(rots[currentRot]);
            currentRot++;
        }

    }
}
