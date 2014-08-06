[ffmpeg converting mov files to mp4](http://stackoverflow.com/questions/12026381/ffmpeg-converting-mov-files-to-mp4)

```
ffmpeg -i movie.mov -vcodec copy -acodec copy out.mp4
```

***

[ffmpeg: How to capture a webcam input](https://trac.ffmpeg.org/wiki/How%20to%20capture%20a%20webcam%20input)

```
// windows
ffmpeg -y -f vfwcap -i list

// linux

ffmpeg -f video4linux2 -r 25 -s 640x480 -i /dev/video0 out.avi

ffmpeg -f v4l2 -r 25 -s 640x480 -i /dev/video0 out.avi

// mac

ffmpeg -f qtkit -list_devices true -i ""

ffmpeg -f qtkit -i "default" out.mpg

```

***

```
// Publishing video from webcam  for linux
ffmpeg -f video4linux2 -i /dev/video0 -c:v libx264 -an -f flv rtmp://localhost/myapp/mystream
```

***

[ffmpeg-convert-flv-to-mp4-without-losing-quality](http://superuser.com/questions/624565/ffmpeg-convert-flv-to-mp4-without-losing-quality)

[onvert-flv-to-mp4-with-ffmpeg-howto](http://www.learnosity.com/techblog/2010/12/convert-flv-to-mp4-with-ffmpeg-howto/)

`ffmpeg -i input.flv -vcodec copy -acodec copy output.mp4`


[how-to-convert-a-m4a-sound-file-to-mp3](http://askubuntu.com/questions/65331/how-to-convert-a-m4a-sound-file-to-mp3)

`ffmpeg -v 5 -y -i input.m4a -acodec libmp3lame -ac 2 -ab 192k output.mp3`