require 'pry'

class Artist
  attr_accessor :name
  @@all=[]

  def initialize(name)
    @name=name
    @songs=[]
  end


  def add_song(song)
    @songs << song
    song.artist = self
    # @@song_count += 1
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
      @@all
  end


  def self.find_or_create_by_name(name)

      # if self.find_by_name(name) == nil
      #   self.create_by_name(name)
      # else
      #   # binding.pry
      #   self.find_by_name(name)
      # end
      self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name)
  end

  def self.find_by_name(name)

    self.all.find {|artist| artist.name == name }

  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.name = name
    artist.save
    artist
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end

  # def add_song(song)
  #   @songs << song
  #   song.artist = self
  #   @@song_count += 1
  # end

  # def artist_name
  #   self.artist.name
  # end

  # def add_song_by_name(song)
  #   song = Song.new(song)
  #   @songs << song
  #   song.artist = self
  #   @@song_count += 1
  # end

  # def self.song_count
  #   @@song_count
  # end
# end