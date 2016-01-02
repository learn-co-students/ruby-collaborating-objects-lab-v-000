class Song
	
	attr_accessor :name, :artist
	def initialize(name)
		@name = name
	end
	
	def self.new_by_filename(file_name)
		name = self.new(file_name.split(" - ")[1].strip)
		name.artist = Artist.find_or_create_by_name(file_name.split(" - ")[0].strip)
		name.artist.add_song(name)
		name
	end
	
end