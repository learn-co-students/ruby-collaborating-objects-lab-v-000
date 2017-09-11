class Artist
  attr_accessor :name, :songs

  @@all = []  #class variable to store artist instances

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << songs
  end  #adds new song to the instance variable @songs

#  def save
#    @@all << self
#  end #adds artist instance to the @@all class variable

  def self.all
    @@all
  end #class reader to access all instances of an artist

  def self.find_or_create_by_name(name)
    unless @@all.detect {|artist| artist.name == name}
      name = Artist.new(name)
    end
  end #class finder to detect existing artist. Creates new instance if not found.

  def print_songs
    self.songs.each {|song| puts song.name}
  end #prints list of all artist's songs.
end
