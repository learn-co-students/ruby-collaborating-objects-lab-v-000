require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.empty?
      puts "creating #{name}"
      name = Artist.new(name)
      puts "name is now #{name}"
    else
      @@all.each do |artist|
        puts "artist is #{artist.name} name is #{name}"
        if artist.name == name
          name
        else
          #puts "now creating #{name}, artist name is #{artist.name}"
          name = Artist.new(name)
        #  puts "didn't find it, made #{name}"
        end
     end
   end
   name
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
