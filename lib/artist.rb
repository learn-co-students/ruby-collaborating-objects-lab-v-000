class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    named_artist = self.all.select {|artist| artist.name == name}
    if named_artist.length() > 0
      named_artist[0]
    else
      new_artist = self.new(name)
      new_artist
    end
  end

  def print_songs
    self.songs.each {|song| puts "#{song.name}\n"}
  end

end
