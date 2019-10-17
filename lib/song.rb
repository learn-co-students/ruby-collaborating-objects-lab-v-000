class Song
  attr_accessor :name, :song, :artist, :genre, :artist_name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name) #creates/sets artist attribute to be the result of name passed to .find_or_create_by_name func
    artist.add_song(self) #invokes .add_song function passing in new self object as variable
  end

=begin
  def genre=(genre)
    @genre = genre
  end
=end

  def name=(name)
    @name = name
  end


  def self.new_by_filename(file_name)
    parts = file_name.split(" - ") #start by splitting artist and song along the dash
    song = self.new(parts[1])      #newvar song = self->(Song).new
    song.artist_name = parts[0]
    return song
    #song.name = parts[1]
    #song.genre = parts[2]
  end
end
