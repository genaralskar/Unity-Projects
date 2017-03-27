using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerController : MonoBehaviour {

	private Rigidbody playerRigidBody;
	private Renderer rend;
	private Collider collide;
	public float moveSpeed;
	public float slowSpeed;
	public Vector3 curVelocity;
	public GunController Gun;
	private bool isHit = false;
	public float timeBetweenFlashes = 0.01f;
	public bool useController;

	//public GUIText scoreText;
	public Text scoreText;
	private int score;


	int floorMask;		//A layer mask so that a ray can be cast just at gameobjects on the floor layer
	float camRayLength = 100f;		//Length of the ray from the camera into the scene

	Vector3 mousePos;
	Plane groundPlane = new Plane(Vector3.up, Vector3.zero);

	// Use this for initialization

	void Start () {
		score = 0;
		UpdateScore();
	}
	void Awake () {
		floorMask = LayerMask.GetMask("Floor");
		playerRigidBody = GetComponent<Rigidbody>();
		rend = GetComponent<Renderer>();
		collide = GetComponent<Collider>();
	}
	
	// Update is called once per frame
	void Update () {

		// Player Aim
		Turning ();


		//Player Firing
		Firing();
		// if(Input.GetMouseButtonDown(0))
		// {
		// 	Gun.isFiring = true;
		// }
		// if(Input.GetMouseButtonUp(0))
		// {
		// 	Gun.isFiring= false;
		// }
		//Debug.Log("mousePos = " + mousePos);
		//Debug.Log("Position = " + transform.position);
	}

	void FixedUpdate () {
		// Player Movement
		//Movement();
		curVelocity = playerRigidBody.velocity;
		if(Input.GetButton("Fire2"))
		{	
			playerRigidBody.velocity = playerRigidBody.velocity * slowSpeed;
		}
	}

	public void Movement()
	{
		playerRigidBody.AddForce(transform.forward * -moveSpeed);
	}

	void Turning()
	{
		//set if(!useController)

		//Rotate with mouse
		if(!useController)
		{
			Ray cameraRay = Camera.main.ScreenPointToRay(Input.mousePosition);
			float rayLength;

			if(groundPlane.Raycast(cameraRay, out rayLength))
			{
				mousePos = cameraRay.GetPoint(rayLength);
				Debug.DrawLine(cameraRay.origin, mousePos, Color.blue);
				Debug.DrawLine(transform.position, mousePos, Color.red);

				transform.LookAt(new Vector3(mousePos.x, transform.position.y, mousePos.z));
			}
		}
		//Rotate with controller
		else
		{
			Vector3 playerDirection = Vector3.right * Input.GetAxisRaw("Horizontal") + Vector3.forward * Input.GetAxisRaw("Vertical");
			if(playerDirection.sqrMagnitude > 0.1f)
			{
				transform.rotation = Quaternion.LookRotation(playerDirection, Vector3.up);
			}
		}
		
	}

	void OnCollisionEnter(Collision collision)
	{
		if(collision.gameObject.tag == "Bullet")
		{
			StartCoroutine(PlayerHit());
		}
	}

	IEnumerator PlayerHit ()
	{
		if(!isHit)
		{
			isHit = true;
			AddScore(-10);
			UpdateScore();
			for(int i = 10; i > 0; i--)
			{
				rend.enabled = false;
				//Debug.Log("Render enabled " + rend.enabled);
				yield return new WaitForSeconds(timeBetweenFlashes);
				//Debug.Log("Render enabled " + rend.enabled);
				rend.enabled = true;
				yield return new WaitForSeconds(timeBetweenFlashes);
			}
			isHit = false;
		}
	}

	void UpdateScore ()
	{
		scoreText.text =  "Score: " + score;
	}

	public void AddScore (int newScoreValue)
	{
		score += newScoreValue;
		UpdateScore();
	}

	public void Firing ()
	{
		if(Input.GetButton("Fire1"))
		{
			Gun.isFiring = true;
		}
		if(Input.GetButtonUp("Fire1"))
		{
			Gun.isFiring= false;
		}
	}
}
