using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// USAGE: put this on the Player
// INTENT: basic WASD movement
public class PlayerController_JZ : MonoBehaviour
{

	public float moveSpeed = 0.5f;
	
	public GameObject player;
	public GameObject cameraPos;

	public Transform cameraTransform;

	// player's transform vector3
	// private Vector3 inputVector;
	
	void Update () {
		/*
		// PLAYER MOVEMENT:
		
		float horizontal = Input.GetAxis("Horizontal"); // A/D, Left/Right
		float vertical = Input.GetAxis("Vertical"); // W/S, Up/Down, Forward
		
		inputVector = transform.forward * vertical; // forward
		inputVector += transform.right * horizontal; // strafe
		*/
		/////////////////////
		// PLAYER POSITION:

		transform.forward = cameraTransform.forward;
		
		// position of player is midpoint of ball and camera with offset
		Vector3 playerPos = ((transform.position + cameraPos.transform.position) / 2);
		playerPos = transform.position - transform.forward * 3f;
		playerPos = new Vector3(playerPos.x, 0f, playerPos.z);
		player.transform.position = playerPos;
		// BUG: player jiggles around
		player.transform.forward = Camera.main.transform.forward;
	}
	
	/*
	void FixedUpdate()
	{
		// override object's velocity with desired inputVector direction
		GetComponent<Rigidbody>().velocity = inputVector * moveSpeed + Physics.gravity * 0.69f;
	}
	*/
}
