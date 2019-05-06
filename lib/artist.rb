class Artist
  #Artist #initialize with #name accepts a name for the artist
  attr_accessor :name, :songs
  @@all = []

  #Artist #name= sets the artist name
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end
  # Artist #songs keeps track of an artist's songs
  def songs
    @songs
  end

  # Artist #save adds the artist instance to the @@all class variable
  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  # Artist .find_or_create_by_name finds or creates an artist by name maintaining uniqueness of objects by name property
  # Artist .find_or_create_by_name Creates new instance of Artist if none exist
  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end
  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end
  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  # Artist #print_songs lists all of the artist's songs
  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

end
