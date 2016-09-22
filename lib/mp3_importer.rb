require 'pry'
class MP3Importer


#The MP3 Importer will parse all the filenames in the db/mp3s folder and send
#the filenames to the Song class
  attr_accessor :path



  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{@path}/*.mp3").map{ |f| f.gsub("#{path}/", "")}
  end

  def import
    files.each do |song|
      s = Song.new_by_filename(song)
    end
  end


end
