require "pry"
class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
  @name = name
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(song_name)
    song = self.create
    song.name = song_name
    song
  end

  def self.create_by_name(song_name)
    #binding.pry
    song = self.new(song_name)
    song.save
    song
  end

  def self.find_by_name(song_name)
    #binding.pry
    self.all.detect {|item| item.name == song_name}
  end

  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end

  def self.alphabetical
    self.all.sort_by { |item| item.name}
  end

  def self.new_by_filename(filename)
    filename = filename.gsub!(".mp3", "")
    filename = filename.split(" - ")
    song_name = filename[1]
    song = self.find_or_create_by_name(song_name)
    artist_name = filename[0]
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.artist.add_song(song)
    song
    #binding.pry

  end

end
