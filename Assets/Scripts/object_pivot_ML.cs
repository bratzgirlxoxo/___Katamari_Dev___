using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class object_pivot_ML : MonoBehaviour
{

	public GameObject ball;
	
	// Update is called once per frame
	void Update ()
	{
		transform.position = ball.transform.position;
		transform.rotation = ball.transform.rotation;
	}
}
