using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//USAGE: put this on a capsule (TMPO PLAYER). -SC
//INTENT: (1) let the player to move when press WASD and IJKL (2) Press SPACE to charge 
public class PlayerMovement_SC : MonoBehaviour
{
	public Rigidbody rb;	
	
	void Start () {
	}
	
	
	// Update is called once per frame
	void Update ()
	{
		Rigidbody rb = GetComponent<Rigidbody>();
		
		//WASD and IJKL movement 
		// Move forward when 'W' and 'I' are both pressed down.
		if (Input.GetKey(KeyCode.W) && Input.GetKey(KeyCode.I))
		{
			rb.AddForce(Vector3.up);
		}
		
		// Move right when 'D' and 'L' are both pressed down.
		if (Input.GetKey(KeyCode.D)) //&& Input.GetKey(KeyCode.L))
		{
			rb.AddForce(Vector3.right);
		}

		// Move left when 'A' and 'J' are both pressed down.
		if (Input.GetKey(KeyCode.A) && Input.GetKey(KeyCode.J))
		{
			rb.AddForce(Vector3.left);
		}
		
		// Move back when 'S' and 'K' are both pressed down.
		if(Input.GetKey(KeyCode.S) && Input.GetKey(KeyCode.K))
		{
			rb.AddForce(Vector3.back);
		}
	}
}
