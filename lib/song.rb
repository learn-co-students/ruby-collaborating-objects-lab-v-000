require 'pry'

=begin
class Song
  attr_accessor :name, :artist


  def initialize(name)
    @name = name
  end
end
=end

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    filearr = file.split(" - ")
    filearr.delete_if {|x| x.include?('.mp3')}

    artist = filearr[0]
    song = filearr[1]

    new_song = self.new(song)

    new_song.artist_name = artist
    new_song

  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)

  end


end
