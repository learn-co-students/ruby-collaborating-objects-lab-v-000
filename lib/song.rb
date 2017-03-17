require 'pry'
class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # def artist_name= (artist_name)
  #   artist_instance = Artist.find_or_create_by_name(artist_name)
  #   artist_instance.add_song(self) if artist_instance
  # end

  def self.new_by_filename(file)

    artist,name = file.split(" - ")
    new_instance =  Song.new(name)
    new_instance.artist = Artist.find_or_create_by_name(artist)
    new_instance.artist.add_song(self) if new_instance.artist
    new_instance

  end

  end
