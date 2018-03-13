class MP3Importer
	attr_accessor :path, :files
	
	def initialize(path)
		@path = path
	end

	def files
		Dir.entries(@path).select{|file| file.include?(".mp3")}
	end

	def import
		self.files.each {|filename| Song.new_by_filename(filename)}
	end
end