using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerController : MonoBehaviour {

	private Rigidbody playerRigidBody;
	public GunController Gun;
	private Renderer rend;
	private Collider collide;
	public Vector3 curVelocity;
	public GameController gameController;

	public float
		moveSpeed,
		slowSpeed,
		timeBetweenFlashes = 0.01f;

	private bool
		isHit = false;

	public bool
		useController;

	//public GUIText scoreText;
	public Text scoreText;
	private int score;

	// stings for player controls
	public string
		Attack = "Fire1_P1",
		Slow = "Fire2_P1",
		Horiz = "Horizontal_P1",
		Vert = "Vertical_P1",
		player;
		

	//Mouse control stuff
	//int floorMask;		//A layer mask so that a ray can be cast just at gameobjects on the floor layer

	Vector3 mousePos;
	Plane groundPlane = new Plane(Vector3.up, Vector3.zero);

	// Use this for initialization

	void Start () {

	}
	void Awake () {
		//floorMask = LayerMask.GetMask("Floor");
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

		//slow player when slow button is pressed
		if(Input.GetButton(Slow))
		{	
			playerRigidBody.velocity = playerRigidBody.velocity * slowSpeed;
		}
	}

	public void Movement()
	{
		//pushes player opposite direction they're facing
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
			Vector3 playerDirection = Vector3.right * Input.GetAxisRaw(Horiz) + Vector3.forward * Input.GetAxisRaw(Vert);
			if(playerDirection.sqrMagnitude > 0.1f)
			{
				transform.rotation = Quaternion.LookRotation(playerDirection, Vector3.up);
			}
		}
		
	}

	void OnCollisionEnter(Collision collision)
	{
		BulletController bullet = collision.gameObject.GetComponent<BulletController>();
		//if tag is Bullet, default bullet
		if(collision.gameObject.tag == "Bullet")
		{
			//player gets hit
			StartCoroutine(PlayerHit(0));
		}

		if(bullet.player != gameObject.tag)
		{
			StartCoroutine(PlayerHit(1));
			bullet.AddScore(1);
		}
		//check what kind of bullet hits player
		// switch (collision.gameObject.tag)
		// {
		// 	case "Bullet":
		// 		StartCoroutine(PlayerHit());
		// 		break;
		// 	//if tag is Bullet_P1, player 1 bullet
		// 	case "Bullet_P1":
		// 		//and player == p1
		// 		if(gameObject.tag == "Player_1")
		// 		{
		// 			//player gets hit
		// 			StartCoroutine(PlayerHit());
		// 		}
		// 		break;
		// 	//if tag is Bullet_P2, player 2 bullet
		// 	case "Bullet_P2":
		// 		//and player == p2
		// 		if(gameObject.tag == "Player_2")
		// 		{
		// 			//player gets hit
		// 			StartCoroutine(PlayerHit());
		// 		}
		// 		break;
		// 	default:
		// 		break;
		// }

	}

	IEnumerator PlayerHit (int j)
	{
		//if the player is not already hit
		if(!isHit)
		{
			//make the player being hit true
			isHit = true;
			//reduce score and update gui
			//gameController.AddScore(gameObject.tag, -10);
			for(int i = 10; i > 0; i--)
			{
				//disable and enabled render of player i times
				rend.enabled = false;
				//Debug.Log("Render enabled " + rend.enabled);
				yield return new WaitForSeconds(timeBetweenFlashes);
				//Debug.Log("Render enabled " + rend.enabled);
				rend.enabled = true;
				yield return new WaitForSeconds(timeBetweenFlashes);
			}
			//set player being hit to false so player can be hit again
			isHit = false;
		}

		switch (j)
		{
			//when bullet matches
			case 0:

				break;
			//when bullet doesnt match
			case 1:

				break;
		}
	}

	// void UpdateScore ()
	// {
	// 	//update gui with new score
	// 	scoreText.text =  "Score: " + score;
	// }

	public void AddScore (int newScoreValue)
	{
		//add newScoreValue to current score, update gui
		score += newScoreValue;
		gameController.UpdateScore();
	}

	public void Firing ()
	{
		//sets isFiring to true if player is pressing Attack button
		//lets GunController know the player is firing
		if(Input.GetButton(Attack))
		{
			Gun.isFiring = true;
		}
		if(Input.GetButtonUp(Attack))
		{
			Gun.isFiring= false;
		}
	}
}
