require 'pry'
require 'find'

class MP3Importer

	attr_accessor :path

	def initialize(path)
		@path = path
	end

	def files
		files = []
		Find.find(self.path) do |path|
			if path =~ /.*mp3$/
				files << path.split("/")[-1]
			end		
		end
		files
	end

	def import
		files = self.files
		files.each do |file|
			title = file.split(" - ")[1]
			artist = file.split(" - ")[0]
			song = Song.new(title)
			song.artist = Artist.find_or_create_by_name(artist)
			unless Artist.all.include?(song.artist)
				song.artist.save
			end
		end
	end

end
