require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename = filename.split(' - ')
    filename[2].gsub!(/.mp3/,'')
    @name = filename[1]
    @artist = filename[0]
    @genre = filename[2]
    song = Song.new(@name)
    song.artist_name=(@artist)
    song
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
      names = Artist.all.map{|artist| artist.name}
      self.artist.save unless names.include?(name)
    else
      self.artist.name = name
    end
  end

end
