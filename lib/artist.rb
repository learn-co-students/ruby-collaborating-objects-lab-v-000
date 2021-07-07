class Artist
  attr_accessor :name, :songs
  @@all= []
  def initialize(name)
    @name=name
    @songs= []
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def self.find_by_name(name)
    @@all.detect {|c| c.name == name}
  end
  def self.create_by_name(name)
    artist= Artist.new(name)
    artist.name = name
    artist.save
    artist
  end
  def self.find_or_create_by_name(name)
    if Artist.find_by_name(name) != nil
       return Artist.find_by_name(name)
    else
      Artist.create_by_name(name)
    end
    @@all.detect {|c| c.name == name}
  end

  #or
    # if Artist.name == nil
    #   Artist.create_by_name
    # else
    #   Artist.find_by_name
    # end

  def add_song(song)
    song.artist= self
   @songs << song
 end
 def songs
   @songs
 end
 def print_songs
   @songs.each do |song|
     puts song.name
   end
 end
end
