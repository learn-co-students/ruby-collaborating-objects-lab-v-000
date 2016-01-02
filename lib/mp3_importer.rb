require 'pry'
# require_relative "../lib/artist.rb"
# require_relative "../lib/song.rb"
class MP3Importer

	attr_accessor :path

	def initialize(path)
		@path = path
	end

	def files
		Dir["./#{path}/*"].map do |song|
			song.split("/")[-1]
		end
	end

	def import  
		files.each do |s|
			Song.new_by_filename(s)
		end
	end
end
