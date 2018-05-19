require 'pry'

class MP3Importer

  # files = Dir.entries('./db/mp3s')


  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @@all = []
    Dir.foreach(@path) do |song|
      if song.include?(".mp3")
        @@all << song
      end
    end
    @@all.uniq
 end

  def import
    @@all.each do |file|
      Song.new_by_filename(file)
    end
  end

# files.each do |item|
#   puts item
# end

end
