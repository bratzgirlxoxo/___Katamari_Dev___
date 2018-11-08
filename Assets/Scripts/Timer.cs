using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor.Experimental.UIElements.GraphView;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class Timer : MonoBehaviour {

	//INTENT: Timer that will count down in the upper right of the screen. When it hits zero it 
	// wil then trigger a win or lose state depending on the size of the ball
	//USAGE: place it on a text renderer? 

	public Text myTextDisplay;


	public float time; 
	
	// Use this for initialization
	void Start ()
	{

	}
	
	// Update is called once per frame
	void Update () {
		time -= Time.deltaTime;


		String timedisplay = ((int) time / 60).ToString(); 
		 int seconds  = ((int) time % 60);
		if (seconds < 10)
		{

			timedisplay += "0";
		}

		//timedisplay += seconds; 

		myTextDisplay.text = timedisplay;
		
		if (time <= 0) 
		{
			SceneManager.LoadScene(2); 
		}
	}
}
