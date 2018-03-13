class Song
  # creating songs given each filename and sending the artist's name (a string) to the Artist class
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
   end

  def self.new_by_filename(file)
    file_array = file.gsub(".mp3", "").split(" - ")
    song_name = self.new(file_array[1])
    artist = file_array[0]
    song_name.artist_name = artist
    song_name
  end
end