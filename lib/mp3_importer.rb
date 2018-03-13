class MP3Importer
	attr_accessor :path

	def initialize(filename)
		@path = filename
	end


	def files
		Dir.entries(@path).select {|files| files.end_with?("mp3")}
	end

	def import
		files.each{|file| Song.new_by_filename(file)} 
	end

end