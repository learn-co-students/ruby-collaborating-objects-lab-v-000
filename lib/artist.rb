class Artist
  @@all=[] #initialize holder for all artists

  attr_accessor :name, :songs

  def initialize(name)
    @name=name
    @songs=[]
    @@all<<self #put new artist in the all artist class variable
  end

  def save
    @@all<<self
  end

  def self.find_or_create_by_name(name) #gets or makes a new artist by name
    res=nil
    @@all.each do |artist|
      if artist.name==name
        res=artist
      end
    end
    if res==nil
      res=Artist.new(name)
    end
    res
  end

  def add_song(song) #adds the song to the artists list by name
    @songs<<song
  end

  def print_songs #prints all the song titles
    @songs.each do |song|
      puts song.name
    end
  end

  def self.all   #creates and accessor for the class variable all. I didn't think this was necessary!?
    @@all
  end

end
