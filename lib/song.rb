class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song.save
  end

  def self.find_by_artist(artist)
    Song.all.select do | song |
      song.artist == artist
    end
  end
  
  def self.all
    @@all
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
  
  def save
    @@all << self
    self
  end

    
  def self.find_by_artist(name)
    Song.all.select { |song| song.name == name }
  end

  def initialize(title)
    @title = title
  end

  def print_songs
    puts @songs.each { |song| puts song_name }
  end 
end

