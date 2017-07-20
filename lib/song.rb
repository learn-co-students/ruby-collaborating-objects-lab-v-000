class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(file)
    artist_name, song_name = file.split(" - ")
    self.new(song_name).tap{|song| song.artist = Artist.find_or_create_by_name(artist_name)}
  end
end
