require 'pry'

class Artist
  attr_accessor :name, :songs
    @@all = []
  def initialize(artist_name)
    @songs = []
    @name = artist_name
  end

  def add_song(string)
    @songs << string
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_by_name(name_string)
    self.all.detect{|x| x.name == name_string}
  end

  def self.create_by_name(name_string)
    new_inst = self.new(name_string)
    new_inst.name = name_string
    new_inst.save
    new_inst
  end

  def self.find_or_create_by_name(name_string)
    self.find_by_name(name_string) || self.create_by_name(name_string)
  end

  def print_songs
    puts "#{songs.join("\n")}"
  end
end
