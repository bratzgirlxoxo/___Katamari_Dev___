using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//USAGE: put this on a capsule (TMPO PLAYER). -SC
//INTENT: (1) let the player to move when press WASD and IJKL (2) Press SPACE to charge 
public class PlayerMovement_SC : MonoBehaviour
{
	public Rigidbody rb;
	
	public float speed = 10;
	public float gravScale = 0.67f;

	public GameObject player; // player to retrieve the animator
	private Animator playerAnim; // the animator on the prince


	private Vector3 inputVector;
	
	void Start () {
		
		rb = GetComponent<Rigidbody>();
		playerAnim = player.GetComponent<Animator>();
	}
	
	
	// Update is called once per frame
	void Update ()
	{

		float vert1 = Input.GetAxis("Vertical");
		float horz1 = Input.GetAxis("Horizontal");
		Vector2 leftInput = new Vector2(horz1, vert1);
		float vert2 = Input.GetAxis("Vertical2");
		float horz2 = Input.GetAxis("Horizontal2");
		Vector2 rightInput = new Vector2(horz2, vert2);
		

		float finalVert;
		if (Mathf.Abs(vert1) >= 0.001f && Mathf.Abs(vert2) >= 0.001f)
		{
			finalVert = (vert1 + vert2) / 2f;
		}
		else
		{
			finalVert = 0f;
		}


		float finalHorz;
		if (Mathf.Abs(horz1) >= 0.001f && Mathf.Abs(horz2) >= 0.001f)
		{
			finalHorz = (horz1 + horz2) / 2f;
		}
		else
		{
			finalHorz = 0f;
		}

		if (finalHorz == 0f && finalVert == 0f)
		{
			playerAnim.SetBool("Running", false);
		}
		else
		{
			playerAnim.SetBool("Running", true);
		}

		inputVector = Camera.main.transform.forward * finalVert + Camera.main.transform.right * finalHorz;
		
	}

	void FixedUpdate()
	{
		rb.velocity = inputVector * speed + Physics.gravity * gravScale;
	}
}
