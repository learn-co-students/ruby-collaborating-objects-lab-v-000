require 'pry'
#parse all filenames in db/mp3s folder and send filenames to the song class
class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    #takes a director, takes out each line that starts with path and ends in mp3, removes path, collects array as "ARTIST - SONG - GENRE.MP3"
  end

  def import #import files into library by creating new songs from a filename
    files.each do |file|
      Song.new_by_filename(file)
      #binding.pry
    end
  end

end
