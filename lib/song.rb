class Song
  attr_accessor :name, :artist


  @@songs = []

  def self.songs
    @@songs
end



  def initialize(name)
    @name = name
    self.class.songs << self
  end

  def self.new_by_filename(file_name)
    song = Song.new(file_name.split("-")[1].strip)
    song.artist = Artist.find_or_create_by_name(file_name.split("-")[0].strip)
    song.artist.add_song(song)
    song
  end






end
