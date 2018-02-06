class MP3Importer
	attr_accessor :path

	@@all = []

	def initialize(path)
		@path = path
	end

	def files
		arr = Dir.entries(@path)
		arr[2..arr.size]
	end

	def import
		Song.new_by_filename(self.files)
	end
	
end
 
 importer = MP3Importer.new("./spec/fixtures/mp3s")

 importer.files