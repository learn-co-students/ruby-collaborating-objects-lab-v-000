require 'pry'

class MP3Importer
  
  attr_accessor :path, :a
  
  def initialize(path)
    @path = path  
     @a = []
  end 
  
  def files
    puts "in files, path=#{@path}"
    puts "wd=...#{Dir.getwd.sub(/.*ruby(.*)/, '\1')}"
    current_dir = Dir.getwd
    Dir.chdir(@path)
    files = Dir.glob("*.mp3")
    Dir.chdir(current_dir)
    files
  end
    
  
  def import(files) 
   
    files.each do |file|
      b = file.split(" - ")
      c = b[0]
      d = b[1]
      e = b[2]
      @a << b
    end 
  end 
  
  
end 