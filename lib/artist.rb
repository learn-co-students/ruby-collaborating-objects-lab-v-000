require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @song = []
  end

  def add_song(song)
    self.songs << song
  end

  def songs
    @song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
    find_it = self.all.find{|artist| artist.name == name}
    !!find_it ? find_it : self.create_by_name(name)
  end



  def print_songs
    self.songs.each {|song| puts song.name}
  end

  # def self.new_by_filename(file_name)
  #   # data = file_name.split("/").last
  #   # artist = data.split(" - ")[0].strip
  #   # Artist.find_or_create_by_name(artist)
  #   artist = Artist.new(file_name)
  #   artist.name = file_name.split(" - ")[0]
  #   artist
  #
  # end


end
