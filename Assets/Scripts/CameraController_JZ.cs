using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using UnityEngine;

// USAGE: put this on the GameObject that has the MainCamera as the child
// INTENT: camera to follow player, player can also rotate camera
public class CameraController_JZ : MonoBehaviour
{

	public float lookSpeed = 10f;
	public GameObject ball;
	public GameObject camera;
	public Transform player;
	public float camHeight;
	public float rotateDistance = 10f;


	private bool fallAdjust;

	private PlayerMovement_SC moveScript; // the movement script on the ball

	void Start()
	{
		moveScript = ball.GetComponent<PlayerMovement_SC>();
	}
	
	void Update()
	{
		transform.position = ball.transform.position;
		
		if (Input.GetKey(KeyCode.Q))
		{
			RotateAroundBall(Vector3.down, transform);
			RotateAroundBall(Vector3.down, player);
		}
		else if (Input.GetKey((KeyCode.O))) // when O is held, camera will rotate right
		{
			RotateAroundBall(Vector3.up, transform);
			RotateAroundBall(Vector3.up, player);
		}
		
		Ray camRay = new Ray(camera.transform.position, Vector3.down);
		RaycastHit rayHit = new RaycastHit();
		float rayDist = 1000f;

		if (Physics.Raycast(camRay, out rayHit, rayDist))
		{
			camera.transform.position = new Vector3(camera.transform.position.x, rayHit.point.y + camHeight, camera.transform.position.z);
		}
	}

	void RotateAroundBall(Vector3 direction, Transform thing)
	{
		thing.RotateAround(ball.transform.position, direction, 20 * lookSpeed * Time.deltaTime);

	}

	/*
	void OnTriggerEnter(Collider coll)
	{
		GameObject otherObj = coll.gameObject;
		Debug.Log("Collided with something!");
		if (otherObj.CompareTag("Ground"))
		{
			Debug.Log("Reverting");
			transform.RotateAround(ball.transform.position, -transform.right, 45f);
			fallAdjust = false;
		}
	}
	*/
}