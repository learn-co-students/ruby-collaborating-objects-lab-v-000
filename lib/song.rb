require 'pry'
class Song
 attr_accessor :name, :artist

 def initialize (name)
   @name = name
end

  def artist_name= (name_of_artist)
    self.artist= Artist.find_or_create_by_name(name_of_artist)
    artist.add_song(self)
  end


  def self.new_by_filename(filename)
    split_file = filename.split (" - ")
    name_of_artist = split_file[0]
    song_name = split_file[1]
    new_song = self.new(song_name)
    new_song.artist_name = name_of_artist
    new_song
  end

end
