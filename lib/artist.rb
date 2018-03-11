
class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
  @@all << self
  end

  def self.find_or_create_by_name(artist_name) #ternary operator can work here since I defined two methods - #find and #create and #tap works to puts artist name after saving the artist name
    self.find(artist_name) ? self.find(artist_name) : self.create(artist_name)
  end

  def self.find(name)
    self.all.find { |artist| artist.name == name }
  end

  def self.create(name) # the #tap allows you to do something with an object in a block and return the object
    self.new(name).tap { |artist| artist.save }
  end

  def print_songs #iterate through songs by an Artist
      songs.each {|song| puts song.name + "\n" }
    end

end
