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


	private Vector3 inputVector;
	
	void Start () {
		
		rb = GetComponent<Rigidbody>();
	
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

		inputVector = Camera.main.transform.forward * finalVert + Camera.main.transform.right * finalHorz;
		






		/*
		if (Input.anyKey)
		{
			
			//WASD and IJKL movement 
			// Move forward when 'W' and 'I' are both pressed down.
			if (Input.GetKey(KeyCode.W) && Input.GetKey(KeyCode.I))
			{
				//rb.AddForce(transform.forward*speed);
				rb.velocity += transform.forward * speed;
			}
			// Move right when 'D' and 'L' are both pressed down.
			if (Input.GetKey(KeyCode.D) && Input.GetKey(KeyCode.L))
			{
				//rb.AddForce(transform.right*speed);
			}

			// Move left when 'A' and 'J' are both pressed down.
			if (Input.GetKey(KeyCode.A) && Input.GetKey(KeyCode.J))
			{
				//rb.AddForce(-transform.right*speed);
			}
		
			// Move back when 'S' and 'K' are both pressed down.
			if(Input.GetKey(KeyCode.S) && Input.GetKey(KeyCode.K))
			{
				//rb.AddForce(-transform.forward*speed);
			}
			
			
			
			
			
			
			
		}
		else
		{
			rb.velocity = Vector3.zero;
		}
		*/


	}

	void FixedUpdate()
	{
		rb.velocity = inputVector * speed + Physics.gravity * gravScale;
	}
}
