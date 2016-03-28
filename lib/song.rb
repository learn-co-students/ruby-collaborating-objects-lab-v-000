class Song
	attr_accessor :name, :artist, :filename

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		data = filename.split(" - ").collect {|x| x.gsub(/.mp3/, '')}
	  	song = self.new(data[1])
  		song.name = data[1]
		artist = Artist.find_or_create_by_name(data[0])
		song.artist = artist
  		artist.name = data[0]
  		song
	end
end
