require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
    # binding.pry

  end

  def files
    list = Dir.entries(path).select {|file| file.include?(".mp3")}
    # p list
  end

  def import
    self.files.each do |filename|
      song = Song.new_by_filename(filename)
      p song.artist
      # artist = Artist.find_or_create_by_name(song.artist)
      # p artist.add_song(song)
      # if song.artist == artist
      #   song.artist.add_song
      # end

    end

  end

end
