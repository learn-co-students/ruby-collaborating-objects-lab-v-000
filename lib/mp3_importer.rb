require 'pry'

class MP3Importer
	attr_accessor :path, :files

	#initialized with a file path
	def initialize(path)
		@path = path
		@files = files
	end

	def files
		@files = Dir.entries("#{@path}").reject {|f| File.directory?(f) || f[0].include?('.')}
		#binding.pry
	end

	def import
		@files.each {|file_name| Song.new_by_filename(file_name)}
	end
end