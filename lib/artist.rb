class Artist
  attr_accessor :name, :songs

  @@all = Array.new  #create class variable to store everything of Artist

  def self.all
    @@all # let @@all know it is the artist
  end

  def initialize(name)
    self.name = name # init name
    self.songs = Array.new # init song array
  end

  def add_song(song)
    self.songs << song # store songs in songs array
  end

  def save
    @@all << self # store the artist in Artist
  end

  def self.find(name)
    self.all.find do |artist| # loop through songs? and set the .name to artist
      artist.name == name
    end
  end

  def self.find_or_create_by_name(name)
    if self.find(name) # check if artist exists
      self
    else
      new_artist = Artist.new(name)   # make new_artist
      new_artist.save #save new_artist
      new_artist #return new_artist
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name} # print all the songs
  end
end
