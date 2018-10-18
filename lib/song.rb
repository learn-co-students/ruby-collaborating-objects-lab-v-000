require "pry"

class Song

  attr_accessor :genre, :name, :artist


  def initialize(name)
    @name = name
    @artist = nil
  end

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  # def self.new_by_filename(filename)
  #   artist_name, song_name, genre_name = filename.chomp(".mp3").split(" - ")
  #   song = self.new(song_name)
  #   # binding.pry
  #   song.artist_name = artist_name
  #   song.genre = genre_name
  #   song.save
  # end

  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(song_name)
    song.artist_name = artist
    song
  end

  def artist_name=(name)

    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)

  end


end #ends class Song
