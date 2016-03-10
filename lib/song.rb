class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(file_name)
    song_data = parse_filename(file_name)
    song = Song.new(song_data[:name])
    song.artist_name = song_data[:artist]

    song
  end

  def self.parse_filename(file_name)
    data = file_name.split(' - ')
    song_hash = {
      name: data[1],
      artist: data[0],
      genre: data[2].chomp('mp3')
    }
  end
end