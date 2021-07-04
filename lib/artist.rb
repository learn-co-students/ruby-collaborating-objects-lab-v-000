class Artist
  #The Artist class will be responsible for either creating the artist (if the artist doesn't exist in our program yet) or finding the instance of that artist (if the artist does exist).
attr_accessor :name, :song

@@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)

    if
      @@all.detect{|artist| artist.name == name}
    else
      artist = self.new(name)
    end
   end


  def print_songs
  @songs.each do |song|
    puts song.name
    end
  end

end
