require 'pry'
class Song
      attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    split_file = filename.split('-')
    file_artist = split_file[0].strip
    file_song = split_file[1].strip
    song = self.new(file_song)
    song.artist_name = file_artist
    song
  end
  
  def artist_name=(artist_name)
  
    self.artist = Artist.find_or_create_by_name(artist_name)
    # binding.pry
    self.artist.add_song(self)
  end
  
end