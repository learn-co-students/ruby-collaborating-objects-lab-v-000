require "pry"

class Song
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def artist=(artist)
    if artist.is_a?(Artist)
      @artist = artist
    end
  end
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
  def artist
    @artist
  end
  def self.new_by_filename(file)
    f_arr = file.scan(/(.+) - (.+) - .+.mp3/)
    f_arr.flatten!
    f_s = Song.new(f_arr[1])
    f_s.artist_name=(f_arr[0])
    f_s
  end
end
