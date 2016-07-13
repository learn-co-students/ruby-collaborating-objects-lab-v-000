require 'pry'

class MP3Importer

	attr_accessor :path

	def initialize(path)
		@path = path
	end

	def files
		file_path = self.path
		Dir["#{file_path}/*.mp3"].collect do |x|
			x.gsub(/\..+mp3s\//,"")
		end
	end

	def import
		self.files.map do |x|
			Artist.all << x
		end
	end

	# binding.pry

end