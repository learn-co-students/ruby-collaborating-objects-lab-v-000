class Song # belongs to Artist

  attr_accessor :name, :artist
	@@all = []

	def initialize(name)
		@name = name
		@artist = artist
    @@all << self
	end

  def self.all
    @@all
  end

# sets artist as instance var & method for song
  def artist
    @artist #tells song its artist name
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artist = Artist.create_by_name(filename.split(" - ")[0])
    song.artist.songs << song
    song
  end
  #class end below
end
