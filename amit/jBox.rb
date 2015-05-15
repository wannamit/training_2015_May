class JukeBox
	attr_accessor :songs

	def initialize(*songs)
		@songs = songs
		@current_play = 0
	end

	def add_song(song)
		songs << song
	end

	def play
		@current_play = 0
		songs.first
	end


	def next
		# @current_play += 1 > songs.length ? songs.first : songs[@current_play]

		if (@current_play+=1) > songs.length
			# puts songs.first
			@current_play = 0
			return songs.first
		else
			# puts songs[@current_play]
			return songs[@current_play]
		end
	end

	def prev

		if (@current_play -= 1) < 0
			# puts songs.last
			@current_play = songs.length-1
			return songs.last
		else
			# puts songs[@current_play]
			return songs[@current_play]
		end
	end

	def shuffle
		@current_play = getRandomIndex
		songs[@current_play]
	end

	def getRandomIndex
		((0..songs.length-1).to_a - [@current_play]).sample
	end


	def currentPlaying
		songs[@current_play]
	end
end


# playlist = JukeBox.new(["Sirens.mp3", "Snuff.mp3", "Aadhar.mp3", "Bhool.mp3", "Numb.mp3"])

playlist = JukeBox.new("Song1", "Song2", "Song3", "Song4", "Song5")

puts "playlist.play"
puts playlist.play
puts 


puts "playlist.next"
puts playlist.next
puts

puts "playlist.prev"
puts playlist.prev
puts

puts "playlist.add_song Black.mp3"
puts playlist.add_song "Black.mp3"
puts

puts "playlist.shuffle"
puts playlist.shuffle
puts

puts "playlist.currentPlaying"
puts playlist.currentPlaying
puts
