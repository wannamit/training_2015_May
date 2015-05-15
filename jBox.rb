class JukeBox
	@@current_play = 0

	def initialize(args)
		@songs = args
		@@geet = @songs
	end

	def add_song(song)
		@songs << song
		@@geet = @songs
		@songs
	end

	def play
		@@current_play = 0
		@songs.first
	end

	def next
		@@current_play += 1
		if @@current_play > @songs.length
			# puts @songs.first
			return @songs.first
		else
			# puts @songs[@@current_play]
			return @songs[@@current_play]
		end
	end

	def prev
		@@current_play -= 1

		if @@current_play < 0
			# puts @songs.last
			return @songs.last
		else
			# puts @songs[@@current_play]
			return @songs[@@current_play]
		end
	end

	def suffle
		randomNum = rand(@songs.length + 1)
		@@current_play = randomNum
		# puts @songs[randomNum]
		@songs[randomNum]
	end


	def self.currentPlaying
		@@geet[@@current_play]

	end
end


# playlist = JukeBox.new(["Sirens.mp3", "Snuff.mp3", "Aadhar.mp3", "Bhool.mp3", "Numb.mp3"])

playlist = JukeBox.new(["Song1", "Song2", "Song3", "Song4", "Song5"])

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

puts "playlist.suffle"
puts playlist.suffle
puts

puts "JukeBox.currentPlaying"
puts JukeBox.currentPlaying
puts