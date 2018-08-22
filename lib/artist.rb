class Artist
  attr_accessor :name, :songs
  @@all = []

  #Upon instantiation a new artist will be assigned a name
  #and have an array to receive their songs
  def initialize(name)
    @name = name
    @songs = []
  end

  #if the given artist is found in the class variable @@all
  #the user will be notified, otherwise it will instantiate
  #a new instance of the class for that artist
  def self.find_or_create_by_name(artist)
    if @@all.any? {|x| x.name == artist}
      "#{artist} already found."
    else
      Artist.new(artist)
    end
  end

  #the self.all class method allows access to the class variable
  #@@all to see everything that has been saved
  def self.all
    @@all
  end

  #add_song will add a specified song to that artist's
  #array of songs
  def add_song(song)
    @songs << song
  end

  #print_songs will provide a descending list of all
  #songs recorded for that particular artist
  def print_songs
    @songs.each {|x| puts "#{x.name}\n"}
  end

  #When save is called on the instance it gets pushed
  #into the class variable @@all to record that its
  #creation
  def save
    self.class.all << self
  end
end
