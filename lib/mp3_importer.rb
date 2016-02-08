require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @files = Array.new
    @path = path
    Dir.foreach(path) do |file|
      if file =~ /[.mp3]{4}/
        @files << file
      end
    end
  end

  def import
    @files.each do |file|
      if file =~ /[.mp3]{4}/
        song = Song.create_from_filename(file)
        artist = Artist.find_or_create_by_name(song.artist)
        artist.songs << song
      end
    end
  end
end
