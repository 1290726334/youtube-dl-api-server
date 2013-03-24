youtube-dl-api-server
=====================

A youtube-dl REST API server.

###How to use it

Just do a GET request to `http://youtube-dl.appspot.com/api/?url=the_video_url`

You'll get a json file like this:

```
{"url": "http://store.steampowered.com/video/105600/",
 "ie": "Steam", 
 "youtube-dl.version": "2013.02.19",
  "videos": [
  			{"url": "http://media2.steampowered.com/steam/apps/81300/movie940.flv?t=1322762847", "ext": "flv", "id": "81300", "title": "Terraria 1.1 Trailer"}, 
  			{"url": "http://media2.steampowered.com/steam/apps/80859/movie940.flv?t=1306276243", "ext": "flv", "id": "80859", "title": "Terraria Trailer"}]}
```

Then you can use each url for downloading the video.

###Try it online
You can use a web interface on: [youtube-dl-web](http://jaimemf.github.com/youtube-dl-web/)

###Deploy your own API
It really easy to setup your own service:

* If you want to run the API on GAE, you just need to change the application value in `app.yaml`.
* You can run `python youtube_dl_server.py` if you prefer to run in other server. See [webapp quick start](http://webapp-improved.appspot.com/tutorials/quickstart.nogae.html) for setting the environment.



######Status

The changes are tested in Travis using the `youtube_dl_server.py`:

[![Build Status](https://travis-ci.org/jaimeMF/youtube-dl-api-server.png?branch=master)](https://travis-ci.org/jaimeMF/youtube-dl-api-server)
