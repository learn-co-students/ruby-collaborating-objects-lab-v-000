class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name

  end


  def artist_name=(name)
    self.artist = Artist.new(name)
  end

  def self.new_by_filename(file_name)

    split = file_name.split(" - ") 
    artist = split[0]
    song = split[1]
    new_song = self.new(song)
    new_song.artist = Artist.find_or_create_by_name(artist)
    new_song


  end




end