using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

//Usage: Put this on the Main Camera in the MenuScene_SC.
//Intent: Switch to play scene when "Enter" is Pressed_SC.
public class MenuScript_SC : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

		if (Input.GetKeyDown(KeyCode.Return))
		{
			SceneManager.LoadScene("ThursdayPlaytestKG");
		}
	}
}
