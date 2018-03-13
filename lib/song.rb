require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if(self.artist == nil)
      return nil
    else
      self.artist.name
    end
  end

  def self.new_by_filename(filename)
    art = filename
    art = art.gsub(/ - .{1,}/,'')
    songname = filename.match(/ - [a-zA-Z\'\s]{1,40} - /).to_a[0]
    songname = songname.gsub(/ - /,'')
    song = self.new(songname)
    song.artist = Artist.find_or_create_by_name(art)
    song
  end
end