class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name) # Init with name
    @name = name  # sets a name for the artist
    @songs = [] # keeps track of the songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self #saves with a class variable
  end

  def self.all # displays all
    @@all
  end

  # must find artist if we find the artist let it be. If not we must create it
  # found_artist
  def self.find_or_create_by_name(artist_name)
    found_artist = self.all.find {|artist| artist.name == artist_name} # checking to see if the artists name are the some_filename assign result to found_artist
    if found_artist
      found_artist
    else
      new_artist = self.new(artist_name) #create a new unique artist
      new_artist.save
      new_artist
    end
  end

  def print_songs
    #display all
    @songs.each do |song|
      puts song.name
    end
  end
end
