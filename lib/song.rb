class Song
  @@all = []
  attr_accessor :name, :artist

  def initialize(name)
    @name   = name
    @artist = nil
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file)
    info = file.gsub(/.mp3/, '').split(' - ')
    song = Song.new(info[1])
    artist = Artist.find_or_create_by_name(info[0])
    song.artist = artist
    artist.songs << song
    @@all << song
    song
  end

end
