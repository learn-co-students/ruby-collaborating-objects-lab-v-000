require 'pry'
class Artist
  attr_accessor :name, :songs
  @@songs = []
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    if @@all.empty?
      @@all << self
    else
      flag = 0
      @@all.each do |val|
        if val.name == name
          flag = 1
        end
      end
      if flag == 0
        @@all << self
      end
    end
  end
  def add_song(song)


    @songs << song
    @@songs << song

  end
  def songs
    @@songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all

  end

  def self.find_or_create_by_name(name)
    flag = 0
    @@all.each do |artist|
      if artist.name == name
        flag = 1
        artist
      end
    end
    if flag == 0
      new_artist = self.new(name)
      @@all << new_artist
      new_artist
    end

    #binding.pry
  end

  def print_songs
    counter = 0
    while @songs.size > counter

      puts @songs[counter].name
      counter =  counter  + 1
    end

  end

end
