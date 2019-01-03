using System.Collections;
using UnityEditor.Build.Content;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.EventSystems;

public class PlayerController : MonoBehaviour
{
	private const float locomotioonAnimationSmoothTime = .1f;
	[SerializeField] private float runSpeed = 5;
	
	private NavMeshAgent agent;
	[SerializeField] private float defaultInteractDistance = 2;
	[SerializeField] Animator anims;

	public string playerName;
	
	public Inventory inventory;
	public Inventory equipmentMenu;
	
	// Use this for initialization
	void Start ()
	{
		agent = GetComponent<NavMeshAgent>();
	}
	
	// Update is called once per frame
	void Update () {
		//on mouse down
		if (!EventSystem.current.IsPointerOverGameObject(-1) && Input.GetMouseButtonDown(0))
		{
			MovePlayer();
		}	
		UpdateAnimation();
	}

	private void MovePlayer()
	{
		// raycast down
		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		RaycastHit hitInfo;
		if (Physics.Raycast(ray, out hitInfo))
		{
			IClickableObject obj = hitInfo.collider.GetComponent<IClickableObject>();
			
			// if the clicked object does not have a IClickableObject interface
			if (obj == null)
			{
				agent.SetDestination(hitInfo.point);
				return;
			}
			
			
			float interactDistance = hitInfo.collider.GetComponent<ClickableObjectBase>().interactDistance;
		//	print(interactDistance);
			
			// interactDistance being 0 means set the interactDistance to default value
			if (interactDistance <= 0)
			{
				interactDistance = defaultInteractDistance;
			}
	
			// navMesh path calulation stuff
			Vector3 objCenter = hitInfo.transform.position;
			// calculate new path then set it because SetDestination is too slow
			NavMeshPath newPath = new NavMeshPath();
			agent.CalculatePath(objCenter, newPath);
			agent.SetPath(newPath);
		//	print(agent.remainingDistance);
			
			//start interact distance check coroutine
			StopCoroutine(MoveInRange(objCenter, interactDistance, obj));
			StartCoroutine(MoveInRange(objCenter, interactDistance, obj));			
			
		}
	}

	//probably move to different script
	private void UpdateAnimation()
	{
		float movementPercent = agent.velocity.magnitude / runSpeed;
		anims.SetFloat("speedPercent", movementPercent, locomotioonAnimationSmoothTime, Time.deltaTime);
	}
	
	
	private IEnumerator MoveInRange(Vector3 position, float range, IClickableObject obj)
	{
		print("Starting distance check coroutine");
	//	print(agent.remainingDistance);
		while (agent.remainingDistance > range)
		{
		//	print(agent.remainingDistance);
			yield return new WaitForEndOfFrame();
		}
	
		//sets agents position to its current location to stop it.
		agent.SetDestination(transform.position);
		obj.OnClicked(this);
		print("Distance check coroutine stopped");
	}

	public void ToggleRun(bool run)
	{
		if (run)
		{
			agent.speed = runSpeed;
		}
		else
		{
			agent.speed = 2;
		}
	}
}
