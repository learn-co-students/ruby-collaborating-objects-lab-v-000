require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    list_of_files = Dir.entries(path)
    list_of_files = list_of_files.select {|f| f.match(/\.mp3/)}
  end

  def import
    list = self.files
    list.each do |f|
      song = Song.new_by_filename(f) #create new song
      song.artist.add_song(song) #add the song you created collection
    end
  end
end
