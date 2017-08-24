require 'pry'

class MP3Importer

	attr_accessor :path
	@@all = []


	def initialize(path)
		@path = path
	end

	def files
		files = Dir.entries(self.path).reject {|file| file == '.' || file == '..'}
	end

	def import
		library = files.each do |filename|
			artist_name = filename.split(' - ')[0]
			artist = Artist.find_or_create_by_name(artist_name)
			song = Song.new_by_filename(filename)
			if Artist.all_artists.include?(artist_name) == false
				artist.add_song(song)
				artist.save
			end
		end
	end

end