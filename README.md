# training_2015_May
Just for training

## Ruby

JukeBox Class

playlist = JukeBox.new(["song1.mp3", "song2.mp3", "song3.mp3"])

playlist.play
  #=> "song1.mp3"

playlist.add_song("song4.mp3")
  #=> ["song1.mp3", "song2.mp3", "song3.mp3", "song4.mp3"]

### Currently playing song is "song1.mp3"
playlist.next
  #=> "song2.mp3"

### Currently playing song is "song1.mp3"
playlist.prev #=> "song4.mp3"

### Currently playing song is "song1.mp3"
playlist.shuffle #=> "song3.mp3"
