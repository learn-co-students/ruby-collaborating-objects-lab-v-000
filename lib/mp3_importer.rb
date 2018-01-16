class MP3Importer

	attr_accessor :path

	def initialize(path)
		@path = path
	end



	def files
		song_list = Dir.glob("#{@path}/*")
		song_list.collect {|s| File.basename(s)}	
	end
		
	def import
		
		files.each {|filename| Song.new_by_filename(filename)}
		 
	end
		
end
		
		