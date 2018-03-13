class Artist

  attr_accessor :name, :songs

  @@all = []


  def initialize(name)
    @name = name
    @songs = []
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

  def self.find_or_create_by_name(artist_name)
    find_artist = @@all.detect{|person| person.name == artist_name}
    if find_artist == nil
      new_artist = Artist.new(artist_name)
      @@all << new_artist
      new_artist
    else
      find_artist
    end
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end

end
