require 'pry'
require_relative './song.rb'
require_relative './mp3_importer.rb'
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
  @songs << song
  end

  def self.find_by_name(name)

    @@all.find{|s| s.name == name }
    # binding.pry
  end

  def self.find_or_create_by_name(name)

    if self.find_by_name(name) == nil
      self.new(name)
    else
      self.find_by_name(name)
    end
  end

  def print_songs

    self.songs.each{|s| puts s.name}

  end


end
