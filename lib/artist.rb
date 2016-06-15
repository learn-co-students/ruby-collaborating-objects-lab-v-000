class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.find_or_create_by_name(new_artist)
    @@all.each do |artist|
      if artist.name == new_artist
        return artist
      end
    end

    artist = Artist.new(new_artist)
    artist.save
    artist

  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end