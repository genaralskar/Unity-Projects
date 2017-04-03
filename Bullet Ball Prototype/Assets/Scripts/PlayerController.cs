using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerController : MonoBehaviour {

	public Rigidbody playerRigidBody;
	private Renderer rend;
	//private Collider collide;
	public Vector3 curVelocity;
	public GameController gameController;

	public float
		//move speed of player
		moveSpeed,
		//amount the player is slowed when pressing Fire2 (slow button)
		slowSpeed,
		//how quickly the player flashes after being hit
		//also affect invincibility time
		timeBetweenFlashes = 0.01f;

	private bool
		//used to check if player has been hit
		//so they can't be hit during invicibility
		isHit = false;

	public bool
		useController = false;

	//public GUIText scoreText;
	public Text scoreText;
	public int playerType;

	// stings for player inputs
	public string
		Attack = "Fire1_P1",
		Slow = "Fire2_P1",
		Horiz = "Horizontal_P1",
		Vert = "Vertical_P1",
		//game object tag for reference for other scripts
		player;
		

	Vector3 mousePos;
	Plane groundPlane = new Plane(Vector3.up, Vector3.zero);

	// Use this for initialization

	void Start () {
		player = gameObject.tag;

	}
	void Awake () {
		playerRigidBody = GetComponent<Rigidbody>();
		rend = GetComponent<Renderer>();
		switch (player)
		{
			case "Player_1":
				playerType = Retainer.player1Type;
				Debug.Log("Player_1 playerType set to "+ playerType);
				break;
			case "Player_2":
				playerType = Retainer.player2Type;
				Debug.Log("Player_2 playerType set to " + playerType);
				break;
			default:
				Debug.Log("No player tag found");
				break;
		}
		//collide = GetComponent<Collider>();
	}
	
	// Update is called once per frame
	void Update () {

		// Player Aim
		Turning ();


		//Debug.Log("mousePos = " + mousePos);
		//Debug.Log("Position = " + transform.position);


	}

	void FixedUpdate () {
		// Player Movement
		//Movement();
		//debug purposes
		curVelocity = playerRigidBody.velocity;

		//slow player when slow button is pressed
		if(Input.GetButton(Slow))
		{	
			playerRigidBody.velocity = playerRigidBody.velocity * slowSpeed;
		}
	}

	public void Movement(int playType)
	{
		//Debug.Log("Movement method called");
		//check if game timer has started
		if(Retainer.timerStart)
		{
			//Debug.Log("Retainer.timerStart = true");
			//Debug.Log("playerType is " + playerType);
			switch (playerType)
			{
				case 1:
					//Debug.Log("playerType is " + playerType);
					playerRigidBody.AddForce(transform.forward * -moveSpeed);
					break;
				case 2:
					//Debug.Log("playerType is " + playerType);
					playerRigidBody.AddForce(transform.forward * -1000);
					break;
				case 3:
					//Debug.Log("playerType is " + playerType);
					playerRigidBody.AddForce(transform.forward * -150);
					break;
			}
			//pushes player opposite direction they're facing

		}
	}

	void Turning()
	{
		//set if(!useController)

		//Rotate with mouse
		if(!useController)
		{
			//some mumbo jumbo about ray casting onto a plane and getting a vector from the intersection of the plane
			//and that's where the mouse is pointing
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
			//new vector 3 from combination of horizontal and vertical inputs
			Vector3 playerDirection = Vector3.right * Input.GetAxisRaw(Horiz) + Vector3.forward * Input.GetAxisRaw(Vert);
			//if player is moving the control stick
			if(playerDirection.sqrMagnitude > 0.1f)
			{
				//change rotation of player
				transform.rotation = Quaternion.LookRotation(playerDirection, Vector3.up);
			}
		}
		
	}

	void OnCollisionEnter(Collision collision)
	{
		//check if collision is tagged bullet first
		if(collision.gameObject.tag == "Bullet")
		{
			BulletController bullet = collision.gameObject.GetComponent<BulletController>();

			//if tag of the player the bullet came from does not equal current player tag
			//ie, the bullet came from another player
			if((bullet.player != gameObject.tag) && (isHit == false))
			{
				StartCoroutine(PlayerHit(1));

				//add score the the player the bullet came from
				//because they deserve it, not you
				//because you're the one that got hit
				//stupid
				gameController.AddScore(1, bullet.player);
			}
			
			//if tag of the player the bullet game from equals current player tag
			//ie, the bullet came from the player that shot it
			else if((bullet.player == gameObject.tag) && (isHit == false))
			{
				StartCoroutine(PlayerHit(1));

				//subtract score from the player
				//cause they got hit by their own bullet
				//stupid
				gameController.AddScore(-2, player);
			}
			//spawn particle system and destroy bullet
			bullet.spawnSmoke();
		}
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

	//moved to GameController
	// void UpdateScore ()
	// {
	// 	//update gui with new score
	// 	scoreText.text =  "Score: " + score;
	// }

	// public void AddScore (int newScoreValue, string player)
	// {
	// 	//add newScoreValue to current score, update gui
	// 	//score += newScoreValue;

	// 	switch (player)
	// 	{
	// 		case "Player_1":
	// 			gameController.scoreP1 += newScoreValue;
	// 			break;
	// 		case "Player_2":
	// 			gameController.scoreP2 += newScoreValue;
	// 			break;
	// 		default:
	// 			break;
	// 	}
	// }

}
