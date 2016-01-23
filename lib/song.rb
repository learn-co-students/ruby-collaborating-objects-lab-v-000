class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    name = file_name.split(" - ")[1].sub(".mp3","")
    artist = file_name.split(" - ")[0]
    #binding.pry
    song = self.new(name)
    song.artist_name = artist
    song
    #binding.pry
  end

  def artist_name=(name)
    #binding.pry
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
    #@artist.save
    #if (self.artist.nil?)
    #  self.artist = Artist.new(name)
    #else
    #  self.artist.name = name
    #end
  end


end
