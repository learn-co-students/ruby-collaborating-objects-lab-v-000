require 'pry'
class MP3Importer

	attr_accessor :path, :files, :size

	def initialize(path)
		@path = path
		@files = []
	end

	def files
		path << "/*.mp3"
		unformatted_files = Dir.glob(path)

		file_split = []
		new_file = []
		unformatted_files.each do |file|
			file_split = file.split(/-|\//) 
			file_split.slice!(0..3)
			new_file = file_split.join("-")
			@files << new_file
		end
		@files
	end

	def import
		files.each do |file|
			Song.new_by_filename(file)
		end
	end

end