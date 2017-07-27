class MP3Importer
	require 'pry'
attr_accessor :path
	

	def initialize(path)
		@path = path
		
	end

	def files
		
		#binding.pry
		@song_names = Dir["#{@path}/*.mp3"].map {|s| s.split("/")[4]}
	end

	def import
		self.files
		#binding.pry
		@song_names.each {|sn| Song.new_by_filename(sn)}

	end
end
