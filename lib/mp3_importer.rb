require 'pry'

class MP3Importer
  attr_accessor :path, :songs

  def initialize(path)
    @songs = []
    @path = path
  end

  def files
    Dir.foreach(@path) do |filename|
      if(filename.match(/.mp3\z/))
        @songs << filename
      end
    end

    return @songs
  end

  def import
    Dir.foreach(@path) do |filename|
      if(filename.match(/.mp3\z/))
        Song.new_by_filename(filename)
      end
    end
  end

end
