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
	public Transform player;

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
		
		/*
		if (!fallAdjust && transform.position.y < player.position.y)
		{
			fallAdjust = true;
			transform.RotateAround(ball.transform.position, transform.right, 35f);
		}
		*/
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