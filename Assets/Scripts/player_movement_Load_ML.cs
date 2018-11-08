using System.Collections;
using System.Collections.Generic;
using UnityEngine;


// usage: this script should be put on the player game object
// intent: this script controls basic movement.
// it does not cover other core mechanics like popping things
public class player_movement_Load_ML : MonoBehaviour
{

	private Rigidbody rbody;
	private Vector3 input_vector;

	public float move_scale;
	public float grav_scale = 0.25f;
	public float rotate_scale = 1f;
	public float jump_strength = 1;

	public float grav_up = -30f;
	public float grav_down = 9.8f;

	public Material ledge_mat;

	private Vector3 move_dir;

	[HideInInspector] public bool on_ground = true;
	
	// Use this for initialization
	void Start ()
	{
		rbody = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
		if (transform.up == new Vector3(0, 1, 0))
		{
			on_ground = true;
		}
		else
		{
			on_ground = false;
		}
		
		
		// if squirrel is on flat ground... use gravity
		// ese... FLOAT
		if (on_ground)
		{
			rbody.useGravity = true;
		}
		else
		{
			rbody.useGravity = false;
		}
		
		
		
		// MOUSE LOOK
		// getting mouse input
		float mouseX = Input.GetAxis("Mouse X"); // horizontal mouse movement
		float mouseY = Input.GetAxis("Mouse Y"); // vertical mouse movement
		
		
		// rotate camera based on mouse input
		transform.Rotate(0f, mouseX * rotate_scale, 0f); // rotate rbody l and r
		//Camera.main.transform.Rotate(-mouseY * rotate_scale, 0f, 0f); // rotate cam up and down 
		
		
		// get horizontal and vertical input
		float side = Input.GetAxis("Horizontal");
		float fwd = Input.GetAxis("Vertical");
		
		AdjustAngle();
		
		input_vector = transform.forward * fwd + transform.right * side; 
		
		
		// jump
		if (Input.GetKeyDown(KeyCode.Space))
		{
			Jump();
		}
	}
	
	void FixedUpdate()
	{
		// override object's velocity with desired inputVector direction
		if (GetComponent<Rigidbody>().velocity.y > 0)
		{
			Physics.gravity = new Vector3(0, -grav_up, 0);
		}
		else
		{
			Physics.gravity = new Vector3(0, -grav_down, 0);
		}

		if (on_ground)
		{
			Vector3 vel = rbody.velocity;
			vel.x = input_vector.x * move_scale;
			vel.z = input_vector.z * move_scale;
			rbody.velocity = vel;
		}
		else
		{
			GetComponent<Rigidbody>().velocity = input_vector * move_scale;
		}
		
		
	}

	void Jump()
	{
		GetComponent<Rigidbody>().AddForce(transform.up * jump_strength, ForceMode.Impulse);
	}


	void AdjustAngle()
	{
		Ray angle_ray = new Ray(transform.position, -transform.up);

		float max_raycast_dist = 10f;
		
		
		RaycastHit ray_hit = new RaycastHit();

		bool rcast = Physics.Raycast(angle_ray, out ray_hit, max_raycast_dist);

		if (rcast)
		{
			transform.up = ray_hit.normal;
		}
	}
}
