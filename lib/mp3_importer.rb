require 'pry'

class MP3Importer
  
  attr_accessor :files, :path
  
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    @files = Dir.glob(@path + "/*.mp3")
    @files.each do |song| 
      song.slice!(0, 21)
    end
  end
  
  def import
    array = self.files
    array.each do |filename|
      Song.new_by_filename(filename)
    end
  end
  
end