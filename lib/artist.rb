class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def add_song(new_song)
    new_song.artist = self
    @songs << new_song
  end

  def save
    Artist.all<<self
  end

  def self.find_or_create_by_name(artist_name)
    artist_name_array = Artist.all.collect {|artist|artist.name}
    if artist_name_array.include?(artist_name)
      Artist.all.find{|artist|artist.name == artist_name}
    else
      new_artist = Artist.new(artist_name)
    end
  end
end
