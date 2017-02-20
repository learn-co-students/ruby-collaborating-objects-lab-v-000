class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name= (name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(file_name)
    song_data = file_name.split(" - ")
    song_data[1].slice!(".mp3")
    artist = song_data[0]
    title = song_data[1]

    song = self.new
    song.artist_name = artist
    song.name = title
    song
    # binding.pry
  end

end
