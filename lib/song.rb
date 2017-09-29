require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_title = filename.split(" - ")[1]
    trubador = filename.split(" - ")[0]

    s = self.new(song_title)

    s.artist =Artist.find_or_create_by_name(trubador)
    #binding.pry
    s.artist.add_song(s)
    s
  end

  #This not needed...made it sound convoluted to me
  # def artist_name=(artist_name)
  #   self.artist = Artist.find_or_create_by_name(artist_name)
  # end

end
