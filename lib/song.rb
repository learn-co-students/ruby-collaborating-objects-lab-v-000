class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    file_song = file.split(" - ")[1]
    file_artist = file.split(" - ")[0]
    file_named = new(file_song)
    file_named.artist = Artist.find_or_create_by_name(file_artist)
    file_named.artist.songs << file_named
    file_named
  end
  
end