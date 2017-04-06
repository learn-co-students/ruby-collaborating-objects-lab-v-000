require 'pry'

class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path

  end

  def files
    Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/", "")}
   # Dir.glob("#{path}/*.mp3").collect {|file| f.gsub("#{path}", "")}
    end
  
  def import
    #song.new_by_filename is 
    files.each do |file| 
      Song.new_by_filename(file)
    end
  end
end
#will parse all the filenames in the db/mp3s folder
#and send the filenames to the Song class
