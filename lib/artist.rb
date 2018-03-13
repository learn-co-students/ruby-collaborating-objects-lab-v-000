class Artist

  attr_accessor :name
  @@all=[]

  def initialize(name)
    @name = name
    @songs = []
    #@@all << self
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create(name)
     artist = Artist.new(name)
     artist.save
     artist
  end

  # def self.create_by_name(a_name)
   #  artist = self.create
   #  artist.name = a_name
   #  artist.save
   #  artist
  # end

   def self.find_by_name(a_name)
     self.all.detect{|a| a.name == a_name}
   end

   def self.find_or_create_by_name(a_name)
     self.find_by_name(a_name) || self.create(a_name)
   end

  def print_songs
    puts "#{@songs.collect{|s| s.name}.join("\n")}"
  end
end