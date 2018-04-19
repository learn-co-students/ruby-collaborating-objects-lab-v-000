require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)

  end

  def self.new_by_filename(filename)
      filename_array = filename.split(/\s-\s/)
        song = Song.new(filename_array[1])
        song.artist_name=filename_array[0]
        song
  end

  def find_or_create_by_name
    if self.artist != nil
      self.artist.name
    else
      Artist.find_or_create_by_name(name)
    end
  end

end
