using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AdvancedCamera_ML : MonoBehaviour {

    public Transform player, ball;

	public float upDistance;
	public float rayDist;
	
	
	private bool down = true;
	private Vector3 originPos;
	private bool notChanging = true;

	void Start()
	{
		originPos = transform.localPosition;
	}
	
	// Update is called once per frame
	void Update ()
	{
		
		Ray camRay = new Ray(transform.position, Vector3.down);

		RaycastHit rayhit = new RaycastHit();
		float maxRayDist = rayDist;

		if (Physics.Raycast(camRay, out rayhit, maxRayDist))
		{
			Debug.Log("readjusting");
			transform.position = rayhit.point + new Vector3(0f, upDistance, 0f);
		}
	}

}
