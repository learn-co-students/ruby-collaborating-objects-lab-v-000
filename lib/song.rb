class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    #binding.pry
    song = self.new(file_name.split("-")[1].strip)
    song.artist = Artist.find_or_create_by_name(file_name.split("-")[0].strip)
    artist_name=(file_name.split("-")[0].strip)
    #binding.pry
    song
  end

  def self.artist_name=(name)
    if self.artist == nil
      self.artist = Artist.find_or_create_by_name(name)
      self.artist.songs = Artist.add_song(self.name)
    else
      self.artist.name
    end
  end

end
