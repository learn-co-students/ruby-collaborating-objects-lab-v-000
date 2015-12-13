class Artist
  attr_accessor :name, :songs

  #class variable to store artist instances.
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  #adds new song to the instance variable @songs.
  def add_song(song)
    @songs << song
  end

  #adds artist instance to the @@all class variable.
  def save
    @@all << self
  end

  #class reader to access all instances of an artist.
  def self.all
    @@all
  end

  #class finder to detect existing artist. Creates new instance if not found.
  def self.find_or_create_by_name(name)
    unless @@all.detect{|artist| artist.name == name}
      name = Artist.new(name)
    end
  end

  #prints list of all artist's songs.
  def print_songs
    self.songs.each {|song| puts song.name}
  end
end