class Artist
attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def add_song(song_name)
    @songs << song_name
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each do |song|
      puts "#{song.name}"
    end
  end

  def self.artist_exists?(artist_name)
    @@all.any? {|artist| artist.name == artist_name}
  end

  def self.find_or_create_by_name(artist_name)
    if(artist_exists?(artist_name))
      @@all.detect {|artist| artist.name == artist_name}
    else
      Artist.new(artist_name)
    end
  end




end
