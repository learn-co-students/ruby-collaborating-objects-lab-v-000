require 'pry'

class MP3Importer
  attr_accessor :name, :artist, :path

  def initialize(path)  #inits with filepath to import songs
    @path = path
  end

  def files
    mp3s = []
    files = Dir.entries(path) #Dir.entries Returns an array containing all of the filenames in the given directory. Will raise a SystemCallError if the named directory doesn’t exist.
    #binding.pry #there's a "." and ".." in the array -_-
    files.each do |entry|
      if entry.include?(".mp3") #getting rid of random ".." and "."
        mp3s << entry
      end
    end
    return mp3s
  end

  def import
    files.each do |song|
      Song.new_by_filename(song)
    end
  end

end
