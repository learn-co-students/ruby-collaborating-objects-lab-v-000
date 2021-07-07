require 'pry'

class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end  
  
  def files
    @files = []
    directory = Dir.open path 
    directory.each do |file|
      if file.match(/mp3/) != nil
      @files << file
     end 
    end
    #binding.pry
  @files
  end 
    
  def import
    files.each do |file|
    Song.new_by_filename(file)
    end
    #binding.pry
  end 
  
  
  
end

