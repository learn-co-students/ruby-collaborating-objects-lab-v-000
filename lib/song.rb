class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end # initialize

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    new_song = self.new(song_name)
    new_song.artist_name = filename.split(" - ")[0]
    new_song.save
  end # .new_by_filename

  def self.find_by_artist(artist)

    Song.all.select do | song |
      song.artist == artist
    end # select

  end # .find_by_artist


  def self.all
    @@all
  end # all


  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end # artist_name

  def save
    self.class.all << self
    artist.songs << self
    self
  end # save

end # class Song
