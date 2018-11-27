using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// USAGE: put this on the Player
// INTENT: basic WASD movement
public class PlayerController_JZ : MonoBehaviour
{
	public GameObject player;
	public GameObject cameraPos;

	public Transform cameraTransform;
	
	void Update () {
		// PLAYER POSITION:

		//transform.forward = cameraTransform.forward;
		
		// position of player is midpoint of ball and camera with offset
		Vector3 playerPos = ((transform.position + cameraPos.transform.position) / 2);
		//Vector3 playerPos = transform.position - Camera.main.transform.forward * 3f;
		playerPos = new Vector3(playerPos.x, 0f, playerPos.z);
		player.transform.position = playerPos;
		// BUG: player jiggles around
		player.transform.forward = Camera.main.transform.forward;
	}
}
