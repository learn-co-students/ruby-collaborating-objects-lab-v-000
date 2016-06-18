class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self ##########################################
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = nil

    @@all.each do |listed_artist|
      if listed_artist.name == name
        artist = listed_artist
      end
    end

    if artist
      return artist
    else
      artist = Artist.new(name)
      @@all << artist
      return artist
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end


end

=begin
artist_3 = Artist.find_or_create_by_name("Drake")
puts "artist_3 class is #{artist_3.class} and artist_3 is #{artist_3}"
puts "@@all is #{Artist.all}"
=end
