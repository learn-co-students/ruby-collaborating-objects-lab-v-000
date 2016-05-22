class MP3Importer

	attr_accessor :songs, :path, :files

	def initialize(file_path)
		@path = file_path
		@files = Dir.entries(@path).select do |file|
			file.include?(".mp3")
		end
	end

	def import
		self.files.each do |file_name|
			Song.new_by_filename(file_name)
		end
	end

end