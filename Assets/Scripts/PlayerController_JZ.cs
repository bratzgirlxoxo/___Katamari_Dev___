using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// USAGE: put this on the Player
// INTENT: basic WASD movement
public class PlayerController_JZ : MonoBehaviour
{
	public GameObject player;
	public GameObject cameraPos;

	//public Transform cameraTransform;
	
	void Update () {
		// PLAYER POSITION:

		Ray groundRay = new Ray(player.transform.position + new Vector3(0f, 1f, 0f), -player.transform.up);
		Debug.DrawRay(groundRay.origin, groundRay.direction, Color.blue);
		float maxRayDist = 5f;
		RaycastHit rHit = new RaycastHit();

		
		Vector3 playerPos = transform.position - Camera.main.transform.forward * 4f;
		Physics.Raycast(groundRay, out rHit, maxRayDist);
		playerPos = new Vector3(playerPos.x, rHit.point.y, playerPos.z);
		player.transform.position = playerPos;
		// BUG: player jiggles around
		Vector3 camForward = Camera.main.transform.forward;
		camForward.y = 0;
		player.transform.forward = camForward;
	}
}
