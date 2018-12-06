using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AdvancedCamera_ML : MonoBehaviour {

    public Transform player, ball;

	public float upDistance;


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
		float ballY = ball.transform.position.y;
		float playerY = player.transform.position.y;

		if (down && notChanging && ballY - playerY < 1.25)
		{
			notChanging = false;
			StartCoroutine(CameraMove(down));
			down = false;
		}
		else if (!down && ballY - playerY > 2f)
		{
			notChanging = false;
			StartCoroutine(CameraMove(down));
			down = true;
		}
	}

	IEnumerator CameraMove(bool down)
	{
		print("cam adjusting");
		float t = 0;

		Vector3 startPos = transform.localPosition;

		while (t < 1)
		{
			if (down)
			{
				transform.localPosition = Vector3.Lerp(startPos, originPos + new Vector3(0f, upDistance, 0f), t);
				yield return null;
			}
			else
			{
				transform.localPosition = Vector3.Lerp(startPos, originPos, t);
				yield return null;
			}

			t += Time.deltaTime*6;
		}

		t = 0;
		notChanging = true;
	} 
}
