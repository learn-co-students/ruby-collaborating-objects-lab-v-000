class MP3Importer
  
  attr_accessor :path, :fileNames
  
  def initialize(path)
    @path = path
  end
  
  def files
    @fileNames = Dir.entries("mp3s")
  end
  
  def import
  
    Song.new_by_fileneame(fileNames)
  end
  
end