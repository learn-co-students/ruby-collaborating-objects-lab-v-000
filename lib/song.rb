#require "pry"

class Song
  attr_accessor :name, :artist, :genre

  def initialize(name="Default Title")
    @name = name
  end

  def artist_name=(name)
    a = Artist.find_or_create_by_name(name)
    a
  end

  def self.new_by_filename(list)
    if list.kind_of?(Array)
      list.each do |file|
        file_a = file.split(" - ")
        song = self.new(file_a[1])
        song.artist = Artist.find_or_create_by_name(file_a[0])
        song.artist.add_song(song.name)
        song
      end
    else
      file_a = list.split(" - ")
      song = self.new(file_a[1])
      song.artist = Artist.find_or_create_by_name(file_a[0])
      song.artist.add_song(song.name)
      #binding.pry
      song
    end
  end
end
