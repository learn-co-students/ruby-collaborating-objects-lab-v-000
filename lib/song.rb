class Song
  attr_accessor :name, :artist, :genre

  @@all = Array.new

  def initialize(name)
    @name = name
  end

  def self.create_from_filename(file)
    file.gsub!(/[.mp3]{4}/, '')
    names = file.split('-')
    song = Song.new(names[1].strip)
    # Should probably be creating a new artist here.
    song.artist = names[0].strip
    song.genre = names[2].strip
    song.save
    song
  end

  def self.new_by_filename(file)
    file.gsub!(/[.mp3]{4}/, '')
    names = file.split('-')
    song = Song.new(names[1].strip)
    new_artist = Artist.new(names[0].strip)
    song.artist = new_artist
    song.genre = names[2].strip
    song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end
