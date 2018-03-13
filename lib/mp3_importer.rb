
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
	 	self.files.each do |file|
	 		song = Song.new_by_filename(file)
			Artist.all << song.artist.name
			Artist.all.uniq!
        end
    end
end