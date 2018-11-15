using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using UnityEngine;

// USAGE: put this on the GameObject that has the MainCamera as the child
// INTENT: camera to follow player, player can also rotate camera
public class CameraController_JZ : MonoBehaviour
{

	public float lookSpeed = 10f;
	public GameObject ballObj;

	//public float rotateDistance = 10f;
	//public Vector3 relativeDistance = Vector3.zero;

	/*
	void Start()
	{
		relativeDistance = transform.position - ballPos.transform.position;
	}
	*/

	void Update()
	{
		// keeps empty GameObject always at same position as the ball
		transform.position = ballObj.transform.position;
	}

	void LateUpdate () {
		
		// CAMERA POSITION:
		// set camera to ball's position with an offset

		//Vector3 offset = new Vector3(0, 1f, -10f); // cam will always stay this distance from ball
		//transform.position = ballPos.transform.position + offset; // applying new offset pos to camera
		
		
		// CAMERA ROTATION:
		
		//transform.LookAt(ballPos.transform.position);
		// when Q is held, camera will rotate left
		if (Input.GetKey(KeyCode.Q))
		{
			//transform.Rotate( 0f, -lookSpeed, 0f);
			RotateAroundBall(Vector3.down);
			
		}
		else if (Input.GetKey((KeyCode.O))) // when O is held, camera will rotate right
		{
			RotateAroundBall(Vector3.up);
			//transform.Rotate( 0f, lookSpeed, 0f);
		}
	}

	void RotateAroundBall(Vector3 axis)
	{
		transform.position = ballObj.transform.position; // + relativeDistance;
		
		// RotateAround() is a Unity pre-made function that rotates smth on its own axis
		// the empty game object is rotating, which will then rotate the child MainCamera
		transform.RotateAround(ballObj.transform.position, axis, 20 * lookSpeed * Time.deltaTime);

		// relativeDistance = transform.position - ballPos.transform.position;
	}
}