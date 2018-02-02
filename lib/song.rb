class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  # def name=(name)
  #   @name = name
  # end

  # def name
  #   @name
  # end

  def artist_name=(artist)
    self.artist = Artist.find_or_create_by_name(artist)
    artist.add_song(self)
    puts self
    artist
  end

  def self.new_by_filename(filename)
    # parts = filename.split(" - ")
    # puts parts[0]
    # puts parts[1]
    # new_instance = Song.new(parts[1])
    # new_instance.artist_name = Artist.find_or_create_by_name(parts[0])
    # # new_instance.artist = parts[0]
    # new_instance
    #binding.pry #new_instance = #<Song:0x00000003052870 @artist="Action Bronson", @name="Larry Csonka">
    # binding.pry
    song = self.new(name)
    song.name = filename.split(" - ")[1]
    song
  end
end
