require "pry"

class Artist

  attr_accessor :name, :songs
  @@all = []
  @@names = []
  def initialize(name)
    @name=name
    @songs = []
  end

  def self.find_or_create_by_name(name_to_find)
    found_artist = nil
    @@all.each do |artist_obj|
        found_artist = artist_obj if artist_obj.name == name_to_find
      end
    if found_artist == nil
      found_artist = Artist.new(name_to_find)
      found_artist.save
    end
    found_artist
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each {|i| puts i.name}
  end

  def self.all
    @@all
  end

end
