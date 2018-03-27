class Song
  attr_accessor :name, :artist
  attr_reader :artist, :name

  @@songs = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    name = file_name.split(" - ")
    artist_instance = Artist.find_or_create_by_name(name[0])
    song_instance = self.new(name[1])
    artist_instance.songs << song_instance
    song_instance.artist = artist_instance
    song_instance
  end

  def self.all
    @@songs
  end
end
