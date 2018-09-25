class MP3Importer
	attr_accessor :path

	@@all = []

	def initialize(path)
		@path = path
	end

	def files
		all_mp3s = Dir["#{@path}/*mp3"]		
		all_mp3s.map {|mp3| mp3.split("/").last}
	end

	def import	
		all_mp3_files = self.files
		
		all_mp3_files.each {|mp3_file| 
			mp3_file_info = mp3_file.split(" - ")

			artist = Artist.find_or_create_by_name(mp3_file_info[0])
			artist.add_song(mp3_file_info[1])
		}
	end
end
