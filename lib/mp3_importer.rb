require 'pry'

class MP3Importer
  
  attr_accessor :path, :a, :files
  
  def initialize(path)
    @path = path  
     @a = []
  end 
  
  def files
    puts "in files, path=#{@path}"
    puts "wd=...#{Dir.getwd.sub(/.*ruby(.*)/, '\1')}"
    current_dir = Dir.getwd
    Dir.chdir(@path)
    @files = Dir.glob("*.mp3")
    Dir.chdir(current_dir)
    @files
   
  end
    
   
  def import 
  
    files.each do |file|
      Song.new_by_filename(file)
    end 
  
  end 
  
  
end 