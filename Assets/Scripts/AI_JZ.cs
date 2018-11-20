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
				destination = new Vector3(Random.Range(-10f, 10f), groundHeight, Random.Range(-10f, 10f));
			}
		
			// always turns to face the destination
			transform.LookAt(destination);
		}
		else
		{ // if AI moves off ground, it'll move back on ground and get a new destination on the ground
			
			// NEED TO FIX: how to get AI to move back on ground after it's off?
			
			transform.Rotate(0f, 1f, 0f);
			destination = new Vector3(Random.Range(-10f, 10f), groundHeight, Random.Range(-10f, 10f));
		}
		
		
	}
}
