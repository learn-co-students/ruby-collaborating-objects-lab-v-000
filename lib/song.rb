class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(array_of_files)
    array_of_files.each do |f|
      song_file = f.split(" - ")
      song = Song.new(song_file[1])
      song.artist = artist_name=(song_file[0])
      song
    end
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    Artist.add_song(name)
  end
end
