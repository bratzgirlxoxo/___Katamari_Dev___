using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectAlign_ML : MonoBehaviour
{

	private float collisionTime;

	private bool hasHit;
	
	void Update()
	{
		/*
		if (hasHit && Time.time - collisionTime >= 3f)
		{
			float dist = Vector3.Distance(transform.position, transform.parent.position);
			
			

			if (dist > transform.parent.GetComponent<SphereCollider>().radius)
			{
				transform.position
			}
		}
		*/
	}
	
	
	void OnCollisionEnter(Collision coll)
	{
		Vector3 collPoint;
		GameObject other = coll.gameObject;
		
		/*
		if (other.CompareTag("Player"))
		{
			hasHit = true;
			collisionTime = Time.time;
			collPoint = coll.contacts[0].point;
			GameObject hitPoint = new GameObject("Contact Point");
			hitPoint.transform.position = collPoint;
			hitPoint.transform.parent = other.transform;
			transform.parent = hitPoint.transform;
			transform.position = transform.parent.position;
		}
		*/
	}
}
