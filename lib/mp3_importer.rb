require 'pry'
class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
  @path = path
  end
  
  def files
    @files = Dir.glob("#{@path}/*.mp3")
    @files.collect do |file|
      file.gsub("#{path}/", "")
    end
  end
  
  def import
    self.files.each do |file_name|
    Song.new_by_filename(file_name)
  end
  end 
  
end