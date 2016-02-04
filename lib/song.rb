class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    info = file_name.split(" - ")
    name = info[1]
    artist = info[0]
    #you can't call self.new(name) EVEN IF you defined the name variable in #initialize because it is a new local variable within the scope of this specific method. so had to define name = info[1]
    song = self.new(name)
    song.artist_name = artist
    song

    #can also do:
    #data = filename.split(" - ")
      #song = Song.new(data[2])
      #song.artist_name = data[0]
      #song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end