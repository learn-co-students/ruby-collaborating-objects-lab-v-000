class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
  end

  def artist_name=(person)
    self.artist = Artist.find_or_create_by_name(person)
  end

  def save
    @@all.push(self)
    self
  end

  def self.all
    @@all
  end

  def self.find_by_artist(artist)
#   Song.all.collect {|i| i.artist == artist}
    Song.all.select{|song| song.artist == artist}
  end

  def self.new_by_filename(file_name)
    artist, song = file_name.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song.save
  end

end
