require 'pry'
class Song
  attr_accessor :song, :name, :artist

  def initialize(title)
    @name = title
  end

  def artist=(name)
    if name.is_a?(String) 
      @artist=Artist.find_or_create_by_name(name) 
    else
      @artist=name
    end

    @artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    song_info = file_name.chomp(".mp3").split(" - ")
    @song = self.new(song_info[1])
    @song.artist=(song_info[0])
    @song
  end

end