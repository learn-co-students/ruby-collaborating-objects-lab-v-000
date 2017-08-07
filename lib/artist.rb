#The Artist class will be responsible for either creating the artist (if the artist doesn't exist in our program yet) or
#finding the instance of that artist (if the artist does exist).

class Artist

  attr_accessor :name, :song

  @@all = []

  def initialize(name)
      @name = name
      @songs = []

  end

  def save
    @@all << self
  end


  # This class method should take the name that is passed in and do one of two things.
  # Find the artist instance that has that name or create one if it doesn't exist. Either way, the return value of the method will be an
  # instance of an artist with the name attribute filled out.
  def self.find_by_name(name)
    self.all.detect{|artist_obj| artist_obj.name == name}
    # @@all.detect do |artist_obj|
    #   artist_obj.name == name;
    # end
  end

  def self.create_by_name(name)
    self.new(name).tap{|artist| artist.save}
    # artist = self.new(name)
    # artist.save
    # artist
  end

  def self.find_or_create_by_name(name)
    # tenary format is condition ? value_if_true : value_if_false
    self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name)
  end

  def add_song(song)
  # This instance method exists to tell the artist about its songs. Simply take the Song instance that is passed in as an argument and store it
  #in a songs array with all the other songs that belong to the artist.
    @songs << song unless @songs.include?(song)# how can we check to see if the song is INCLUDED in the array << big hint!!!
    song.artist = self unless song.artist
  end

  def songs
    @songs
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end

  def self.all
    @@all
  end

end
