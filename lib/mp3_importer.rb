
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
	 	self.files.each do |song|
	 		file = Song.new_by_filename(song)
        end
    end
end