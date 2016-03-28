class MP3Importer

attr_accessor :path, :artist

	def initialize(path)
		@path = path
	end


	def files
		Dir.entries(@path).select do |file|
			file.include?(".mp3")
		end
	end

	 def import
	 	song = Song.new_by_filename
	 	

	 	Artist.songs << song
	 end
end