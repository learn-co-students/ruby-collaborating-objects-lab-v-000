class Song # belongs to Artist

  attr_accessor :name, :artist
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

  def self.all
    @@all
  end

# sets artist as instance var & method for song
  def artist=(artist)
    @artist = artist #tells song its artist name
  end

  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split(" - ")[1]
    self.artist if artist
    song
  #class end below
end
