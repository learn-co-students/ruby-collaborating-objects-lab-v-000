require 'pry'
class MP3Importer
  attr_accessor :path , :music_library

  def initialize(path)
    @path = path
    @music_library = []
  end
  def files
   Dir.foreach(@path) {|filename|
    if filename.include? (".mp3")
        @music_library << filename
      end
    }
    return @music_library
  end
  def import
    self.files.each do |file|
      song = Song.new_by_filename(file)
      Artist.all << song.artist unless Artist.all.include?(song.artist)
    end
  end
end

