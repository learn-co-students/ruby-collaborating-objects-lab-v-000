require 'pry'

class MP3Importer 

	attr_accessor :path, :song_final

	def initialize(path) 
		@path = path
	end 

	def files 
		songs = Dir.glob("#{@path}/*.mp3")
		@song_final = []
		songs.each do |song|
			path_array = song.split("/")
			@song_final << path_array[-1]
		end
		@song_final
	end

	def import 
		self.files.each do |song_info|
			new_song = Song.new_by_filename(song_info)
		end	
	end
end