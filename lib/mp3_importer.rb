class MP3Importer

	attr_accessor :path, :artist, :song

	def initialize(path)
		@path = path
	end

	def files
	file_names = []
	files = Dir["#{self.path}/**/*.mp3"]
	files.each {|file| file_names << file.split(/mp3s\/(.+.mp3)\z/)[1]}
	file_names
	end

	def import
		files.each do |f|
			Song.new_by_filename(f)
		end
	end
end