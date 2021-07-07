class Artist

  attr_accessor :name, :songs

  @@all = [] #array of artist instances

  def initialize(name)#artist name
    @name = name
    @songs = [] #array of songs for each instance
  end

  def self.all #displays @@all array class variable
    @@all
  end

  def add_song(song)
  #called by the song instance, adds in that songs instance
  #called inside the song method #artist_name=
  #after the song has been created, assigned a name
  #the song class checks to see if there is an artist associated with the song, and if there isnt' one, it asks the Artist class to create an artist instance
  #it then passes that artist instance back to the song to store as an attribute
  #the song class then calls this method #add_song
  #this method adds the song to the artist instances song array
  #every artist instance has this array
    @songs << song
  end

  def save
    @@all << self #saves artist to all array
  end

  def self.find_or_create_by_name(artist_name)
    found_artist = self.all.find { |artist| artist.name == artist_name} #find artist name?
    if found_artist
      found_artist
    else
      new_artist = self.new(artist_name) #create & save not found/new artist
      new_artist.save
      new_artist
    end
  end

    #   def self.find_or_create_by_name(name)
    #   if self.find(name)
    #     self.find(name)
    #   else
    #     self.create(name)
    #   end
    # end
    #
    #
    # def self.find(name)
    #   @@all.find do |artist|
    #     artist.name == name
    #   end
    # end
    #
    # def self.create(name)
    #   artist = self.new(name)
    #   @@all << artist
    #   artist
    # end

  #this method prints out an array of song names
  #by accessing the name attribute of each song
  def print_songs
      songs.each {|song| puts song.name}
  end

end
