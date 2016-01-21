class Song

  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
    song_attributes = filename.chomp(".mp3").split(/\s-\s/)
    song = self.new(song_attributes[1])
    song.artist_name = song_attributes[0]
    song
  end

  def artist_name=(name)
    index = Artist.all.find_index { |artist| artist.name == name }
    if index
      artist = Artist.all[index]
      artist.add_song(self)
      self.artist = artist
    else
      artist = Artist.new(name)
      artist.add_song(self)
      self.artist = artist
      artist.save
    end
  end

end
