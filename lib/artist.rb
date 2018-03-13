class Artist
  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all.uniq
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)
    if self.all.detect {|artist| artist.name == artist_name}
      self.all.detect {|artist| artist.name == artist_name}
    else
      Artist.new(artist_name)
    end
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    self.songs.each {|song| puts "#{song.name}"}
  end


end
