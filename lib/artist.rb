require 'pry'

class Artist
attr_accessor :name, :songs
@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(songs)
    @songs.push(songs)
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artistname)
    if @@all.find { |artist| artist.name == artistname } == nil
      name = Artist.new(artistname)
      name.save
      name
    else
      @@all.find { |artist| artist.name == artistname }
    end
  end

  def print_songs
    full_list = songs.collect {|song| puts song.name}

  end
end
