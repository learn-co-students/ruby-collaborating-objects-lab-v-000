class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # def artist=(artist)
  #   self.artist = artist
  # end

  def self.new_by_filename(filename)
    file_arr = filename.gsub(".mp3", "").split(" - ")
    artist = Artist.find_or_create_by_name(file_arr[0].to_s)
    song = Song.new(file_arr[1].to_s)
    artist.add_song(song)
    song
  end
end
