class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name=name
  end

  def self.remove_mp3_and_parse(filename)
    mp3_removed = filename.match(/(.*?).mp3/)
    mp3_removed[0].split(" - ")
  end

  def self.new_by_filename(filename)
    split_array = self.remove_mp3_and_parse(filename)
    artist_name = split_array[0]
    song_name = split_array[1]
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    song.artist = artist
    song
  end

end