require 'pry'

class MP3Importer 
  
  attr_accessor :path 
  attr_accessor :files 
  
  def initialize(path)
    @path = path
  
    @mp3s = []
  end 
  
   def files 
    @files = Dir["#{@path}/*.mp3"].each {|file| file.slice! "#{@path}/"}
    end

  def import 
    self.files.each do |file|
      Song.new_by_filename(file)
    end 

  end 


end 
