class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    name = filename.split(' - ')[1]
    artist_name = filename.split(' - ')[0]
    song = Song.new(name)
    song.artist = Artist.new(artist_name)
    song.artist.save unless Artist.all.any?{|artist| artist.name == artist_name}
    song
  end
end
