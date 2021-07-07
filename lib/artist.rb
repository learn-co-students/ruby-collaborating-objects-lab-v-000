class Artist
  attr_accessor :name
  @@all = Array.new

  def initialize(name)
    @name = name
    @songs = Array.new
  end

#reader methods
  def self.all
    @@all
  end

  def songs
    @songs
  end

#instance methods
  def add_song(song)
    self.songs << song
  end


  def save
    @@all << self
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

  #class methods
  def self.find_or_create_by_name(name)
     self.find(name) ? self.find(name) : self.create(name)
   end

   def self.find(name)
     self.all.find {|artist| artist.name == name }
   end


   def self.create(name)
     self.new(name).tap {|artist| artist.save}
   end

end
