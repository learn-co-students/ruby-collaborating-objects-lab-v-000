

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def print_songs
    song_names = []
    @songs.each do |song|
      song_names << song.name
    end
    print song_names.join("\n") << "\n"
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    if
      self.all.find{ |artist| artist.name == artist_name}
    else
      artist = Artist.new(artist_name)
    end
  end

end
