class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end



  def self.new_by_filename(file_name)

    parse_song = file_name.chomp(".mp3").split(" - ")
    song = Song.new(parse_song[1])
    song.artist_name = parse_song[0]
    song
  end

  def artist_name=(name)
     self.artist = Artist.find_or_create_by_name(name)
     self.artist.add_song(self)
  end


end
