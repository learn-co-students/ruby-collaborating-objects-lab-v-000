class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end
    
  def self.all 
    @@all 
  end 

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self 
  end

  def self.find_or_create_by_name(name)
    if @@all.any? {|artist| artist.name == name}
      @@all.detect {|artist| artist.name == name}
    else
      song = self.new(name)
      song.save
      song
    end
  end

  def print_songs
    song_names = []
    self.songs.each do |song|
      song_names << song.name 
    end 
    song_names.each do |names|
      puts names 
    end 
  end
    
end