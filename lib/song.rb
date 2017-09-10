class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    parsed = filename.split(" - ")
    file_artist = parsed[0]
    file_song = parsed[1]
    #binding.pry
    new_song = self.new(file_song)     #creates new Song
    new_song.artist_name=(file_artist) #create new Artist or return existing Artist
    new_song
  end

  def artist_name=(name)

    art_name = Artist.find_or_create_by_name(name)
    self.artist = art_name
    art_name.add_song(self.name)
  end

end
