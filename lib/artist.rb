require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def name=(name)
    @name = name
  end

  def add_song(song)
    @songs << song
  end

  # def self.add_song_from_file_name(song, artist)
  #   artist.add_song(song)
  # end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  # def self.find_or_create_by_name(artist_name)
  #   #binding.pry
  #   if @@all.any? {|artist| artist.name == artist_name }
  #     @@all.each do |existing_artist|
  #       if existing_artist.name = artist_name
  #
  #         return existing_artist
  #       end
  #     end
  #   else
  #     new_artist = Artist.new(artist_name)
  #     @@all << new_artist
  #     #binding.pry
  #     return new_artist
  #   end
  # end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
