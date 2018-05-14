using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Runtime.Remoting.Contexts;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
	private CharacterController _cc;
	public float MoveSpeed;
	public SO_FloatInput LeftRightInput;
	public SO_FloatInput UpDownInput;
	
	// Use this for initialization
	private void Start ()
	{
		_cc = GetComponent<CharacterController>();
	}
	
	// Update is called once per frame
	private void Update ()
	{
		float moveX = LeftRightInput.GetInput();
		//print("moveX = " + moveX);
		
		float moveY = UpDownInput.GetInput();
		//print("moveY = " + moveY);
		
		Vector3 moveVector = new Vector3(moveX, 0, moveY);
		//print("moveVector = " + moveVector);
		
		if(moveVector.magnitude > 1)
			moveVector = moveVector.normalized;

		_cc.Move(moveVector * MoveSpeed * Time.deltaTime);
	}
}
