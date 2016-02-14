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
    # song.artist = self
  end

  def save
    @@all << self
    self
  end
  
  def print_songs
    @songs.each do |song| 
      puts "#{song.name}"
    end
  end

  def self.find_or_create_by_name(name)
    existing_artist = nil
    @@all.each do |artist_instance| 
      if artist_instance.name == name
        existing_artist = artist_instance
      end
    end
    if existing_artist.nil?
      self.new(name).save
    else 
      existing_artist
    end
  end

  def self.all
    @@all
  end


end