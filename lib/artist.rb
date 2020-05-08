require 'pry'

class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
  	@name = name
    @songs = []
  end

  def add_song(song_name)
    @songs << song_name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    # self.all.find do |artist|
    #   artist.name == artist_name ? artist : Artist.new(artist_name)
    # end
    artist_found = self.all.find {|artist| artist.name == artist_name}
    if artist_found
      artist_found
    else
      new_artist = Artist.new(artist_name)
      new_artist.save
      new_artist
      #could be refactored in to create method
    end
  end

  def print_songs
    self.songs.each {|song| puts "#{song.name}" }
  end
end
