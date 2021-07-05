#require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song_elements_array = file_name.split(" - ").collect{|element| element.gsub(".mp3", "")}
    song_instance = self.new(song_elements_array[1])
    song_instance.artist_assign=(song_elements_array[0])
    song_instance
  end

  def artist_assign=(name)
    #assign an artist instance to a song
    #add song to artist's collection of many
    @artist = artist
    @artist = Artist.find_or_create_by_name(name)
    #puts @artist.name
    #@artist.add_song(self) # New
  end

end

someone = Song.new_by_filename("Adele - Someone Like You - folk.mp3")

#binding.pry
