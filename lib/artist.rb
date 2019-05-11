require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    save
  end

  def self.all
    @@all
  end

  def save
  @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
   end

   def self.find(name)
     self.all.find do |artist|
       artist.name == name
     end
   end

   def self.create(name)
     self.new(name).tap do |artist|
       artist.name == name
     end
   end

   def print_songs
      @songs.each { |a| puts a.name }
   end
  #  binding.pry
end
