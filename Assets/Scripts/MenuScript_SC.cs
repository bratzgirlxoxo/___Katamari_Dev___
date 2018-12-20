using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.Video;

//Usage: Put this on the Main Camera in the MenuScene_SC.
//Intent: Switch to play scene when "Enter" is Pressed_SC.
public class MenuScript_SC : MonoBehaviour
{

	private VideoPlayer video;

	void Start()
	{
		video = GetComponent<VideoPlayer>();
		PlayVideo();
	}
	
	
	// Update is called once per frame
	void Update () {

		if (Input.GetKeyDown(KeyCode.Return))
		{
			SceneManager.LoadScene("ThursdayPlaytestKG");
		}
	}

	void PlayVideo()
	{
		string StreamingPath = System.IO.Path.Combine(Application.streamingAssetsPath, "MenuVideo.mp4");
		video.url = StreamingPath;
		video.isLooping = true;
		video.Play();
	}
}
