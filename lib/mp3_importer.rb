require 'pry'

class MP3Importer
	attr_accessor :path, :mp3s

	def initialize(path)
		@path = path
	end

	def files
		files= Dir.entries(@path)
		@mp3s = files.select {|file| file.scan(/(.+.mp3\b)/) != []}	
		
	end

	def import
		@mp3s= files
		files.each {|filename| Song.new_by_filename(filename)}

	end
	
end