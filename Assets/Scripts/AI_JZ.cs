using System.Collections;
using System.Collections.Generic;
using UnityEngine;


// USAGE: put this on any AI GameObject
// INTENT: the animal AI NPC will move around randomly on the ground

public class AI_JZ : MonoBehaviour
{

	public Vector3 destination;
	public float moveSpeed = 3f;

	// make sure AI always stays on the same Y-value
	public float groundHeight;

	// set these in the inspector to be slightly larger than the ground the AI is on
		// aka, if the bed is 10x10, make the length and width 11x11 or something
	public float groundXLength;
	public float groundZLength;
	
	public float maxRayDist = 0.6f; // raycast's max dist is slightly longer than half height of AI

	// Update is called once per frame
	void Update ()
	{
		// groundedRay checks if AI is resting on ground or not
		Ray groundedRay = new Ray(transform.position, Vector3.down);


		// if AI is grounded, then AI will move around
		if (Physics.Raycast(groundedRay, maxRayDist))
		{
			// AI will always move toward the destination
			transform.position = Vector3.MoveTowards(transform.position, destination, moveSpeed * Time.deltaTime);

		
			// if reach destination, make a new random destination
			if (Vector3.Distance(transform.position, destination) < 2f)
			{
				FindNewDestination();
			}
		
			// always turns to face the destination
			transform.LookAt(destination);
			Debug.DrawLine(transform.position, destination, Color.cyan);
			//TODO: fix it so that the snail faces forward?
		}
	}

	// will find a new destination that is within the bounds of the ground
	void FindNewDestination()
	{
		destination = new Vector3(Random.Range(-groundXLength, groundXLength), 
			groundHeight, 
			Random.Range(-groundZLength, groundZLength));
			
		Ray destinationGroundedRay = new Ray(destination, Vector3.down);
		if (!Physics.Raycast(destinationGroundedRay, groundHeight + 1))
		{
			
			FindNewDestination();
			Debug.Log("bad destination");
		}
		else
		{
			Debug.Log("good destination");
			
		}
	}
}
