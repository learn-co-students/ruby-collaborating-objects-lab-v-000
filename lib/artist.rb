class Artist
  attr_accessor :name
  @@all = []
  def initialize(name=nil)
    @name = name
    @songs = []
  end
  def songs
    @songs
  end
  def add_song(song)
    @songs << song
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def self.find_by_name(name)
   self.all.detect{|person| person.name == name}
  end
  def self.find_or_create_by_name(name)
    self.all.each do |artist|
      if artist.name = name
        self.find_by_name(name)
      else
        self.new(name)
      end
    end
    self.find_by_name(name)
   end
   def print_songs
     @songs.each do |song|
       puts song.name
     end
   end
end
