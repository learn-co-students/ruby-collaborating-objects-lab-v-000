class MP3Importer

	attr_accessor :songs, :path, :files

	def initialize(file_path)
		@path = file_path
		@files = Dir.entries(@path).select do |file|
			file.include?(".mp3")
		end
	end

	def import
		self.files.each do |filename|
			Song.new_by_filename(filename)
		end
	end

end