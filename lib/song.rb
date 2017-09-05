class Song
  attr_accessor :name, :artist, :genre

  @@songs = []

  def initialize(name)
    @name = name
    @@songs << self
  end

  def self.new_by_filename(filename)
    matches = filename.match(/(.*) - (.*) - (.*)\./)
      name = matches[2]
      artist = matches[1]
      genre = matches[3]

    song = Song.new(name)
    song.artist = Artist.find_or_create_by_name(artist)
    song.artist.add_song(song)
    song


    # matches = filename.match(/(.*) - (.*) - (.*)\./)
    # song.artist = matches[1]
    # song.name = matches[2]
    # genre = matches[3]
    #
    # @@songs << song
  end
end
