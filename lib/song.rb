class Song
  attr_accessor :name, :artist, :mp3_importer
  @@all = []
  def initialize(name)
    @name = name
  end

  def self.new_by_name(name)
    song = self.new(name)
    song
  end

  def self.create_by_name(name)
    song = self.new_by_name(name)
    @@all << song
    song
  end

  def self.new_by_filename(file)
    file = file.split(" - ")
    artist = file[0]
    song = file[1].gsub(".mp3", "")
       #binding.pry
    new_song = self.create_by_name(song)
    new_song.artist = Artist.find_or_create_by_name(artist)
    new_song.artist.add_song(new_song)
    new_song
  end
end
