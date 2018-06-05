require 'pry'
class Artist

  attr_accessor :name, :song, :artist_name

  @@all = [] #keeps track of all artist instances

  def initialize(artist_name)
    @name = artist_name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def songs #keeps track of an artist's songs
    @songs
  end

  def save #adds the artist instance to the @@all class variable
    @@all << self if !@@all.include?(self)
  end

  def self.all
    @@all
  end

  def self.create_by_name(artist_name)
      artist = self.new(artist_name)
      artist.name = artist_name
      artist.save
      artist
    end

    def self.find_by_name(artist_name)
        array = Artist.all.select {|artist| artist.name == artist_name}
        array[0]

       #self.all.detect { |artist| artist.name == name }
      # binding.pry
      #  @@all.each do |artist|
      #    if @@all.include? artist_name
      #      artist.
      #      break
      #    end
      #  end
    end

    def self.find_or_create_by_name(artist_name)
      # @@all << self
      self.find_by_name(artist_name) || self.create_by_name(artist_name)
    end

  def print_songs
    self.songs.each {|song| puts song.name}
  end


end
