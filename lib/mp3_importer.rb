require 'pry'

class MP3Importer
	attr_accessor :path

	def initialize(path)
		@path = path
	end

	def files
		file_path = self.path
		files = Dir["#{file_path}/*.mp3"].collect do |x|
			x.gsub(/\..+mp3s\//,"")
		end

	end

	def import
		

	end





end