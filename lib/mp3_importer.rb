require 'pry'

class MP3Importer
	attr_accessor :path

	def initialize(file_path)
		@path = file_path
	end

	def files
		folder = Dir.glob("#{@path}/*.mp3")
		folder.collect {|filename| filename.slice!("#{path}/")}
		folder
	end



	def import
		files.each {|filename| Song.new_by_filename(filename) }
	end
end
