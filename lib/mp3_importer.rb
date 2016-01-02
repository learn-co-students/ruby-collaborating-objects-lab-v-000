class MP3Importer
	attr_reader :path
	def initialize(path)
		@path = path
		@path_array = []
	end
	def files
		@path_array = Dir.entries(@path).select do |x|
			x.scan(/(.mp3)/).flatten[0] == ".mp3"
		end
		@path_array
	end
	def import
		@path_array.each do |x|
			Song.new_by_filename(x)
		end
	end
		
end