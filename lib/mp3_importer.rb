require 'pry'

class MP3Importer
	attr_accessor :path

	@@files = []

	def initialize(path)
		@path = path
	end

	def files
		Dir.foreach(self.path) {|file| @@files << file if File.extname(file) == ".mp3"}
		@@files
	end

	def import
		self.files.each do |file|
			song = Song.new_by_filename(file)
			song.artist.add_song(song)
		end
	end
end

#Artist.class_variable_set("@@all",[])
#test_music_path = "./spec/fixtures/mp3s"
#music_importer = MP3Importer.new(test_music_path)
#music_importer.import
#Artist.all