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
		self.files.each do |filename|
			Song.new_by_filename(filename)
		end
	end

	# binding.pry

end