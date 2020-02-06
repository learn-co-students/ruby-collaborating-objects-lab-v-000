class Song
  attr_accessor :title, :artist
  def initialize(title)
    @title = title
  end
end

class artist
  attr_accessor :name, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
  end
end

drake = Artist.new("Drake", "rap")
hotling_bling = Song.new("Hotline Bling")
hotling_bling.artist = drake

# Has Many Objects lesson

class Song
  attr_accessor :artist, :name, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
  end
end

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

ninetynine_problems = Song.new("99 Problems", "rap")
jay_z = Artist.new("Jay-Z")
ninetynine_problems.artist = jay_z
ninetynine_problems.artist.name  # "Jay-Z"


### Has Many relationship...

class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    @songs << song  # Call method with object, and object goes into array
    song.artist = self
      # "song" is object, so this sets that object's "artist"
      # to "self" - or this instance of "artist"
  end

  def songs
    @songs
  end
end

jay_z = Artist.new("Jay-Z")
jay_z.add_song("99 Problems")
jay_z.add_song("Crazy in Love")

#### Calling add_song with a real song object.....
ninetynine_problems = Song.new("99 Problems", "rap")
crazy_in_love = Song.new("Crazy in Love", "pop")
jay_z.add_song(ninetynine_problems)
jay_z.add_song(crazy_in_love)
jay_z.songs # =>[#<Song:0x007fa96a878348 @name="99 Problems", @genre="rap">, #<Song:0x007fa96a122580 @name="Crazy in Love", @genre="pop">]

crazy_in_love.artist.name
# Works because of song.artist = self line is add_song

### WITH ABOVE CODE, we have to FIRST create a song, THEN
### add it to collection of songs. This is no longer
### necessary with a add_song_by_name instance method.

class Artist
  # other code here....
  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    @songs << song
    song.artist = self
  end
end



# COLLABORATING OBJECTS LESSON

## Mp3 importer collaborating with songs

### Purpose: Take list of mp3s
### Send to Song class to make a Song object

class Song
  attr_accessor :title
  def self.new_by_filename(filename)  #class method
    song = self.new   # creates new instance of Song (self)
    song.title = filename.split(" - ")[1] # assigns song a title - since it isn't set with initialization
    song  #returns song object
  end
end

class MP3Importer
  def import(list_of_filenames)
    list_of_filenames.each do |filename|
      Song.new_by_filename(filename)  # Passes single filename to Song class
      # Program will go to the Song class, do whatever is in
      # new_by_filename, then return to MP3 and continue executing
    end
  end
end


# SONGS COLLABORATING WITH ARTISTS EXAMPLE

class Song
  attr_accessor :artist  # to read/write @artist...
    # Other methods go here...
    # Artist object will get assigned to songs somehow...
  def artist_name=(name)  # custom method to define artist of song's name
    if self.artist.nil? # If song has NO artist...
      self.artist = Artist.new(name)
      #...create a new artist with name, AND save it to @artist
    else                # Otherwise,
      self.artist.name = name  # assign name to existing artist
    end
  end
end

class Artist
  attr_accessor :name # Makes "self.artist.name = name" in Song work
  def initialize(name) # Makes "Artist.new(name)" in Song class work
    @name = name
  end
  # Other methods...
end

hotline_bling = Song.new('Hotline Bling')
# new song object stored in hotline_bling...

hotline_bling.artist_name = "Drake"
# Sets artist name using artist_name= in Song class...
# Creates a new artist object if necessary, saving it to @artist in Song

hotline_bling.artist
# Returns new artist object (Drake)
