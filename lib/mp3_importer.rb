class MP3Importer 
  attr_accessor :path 
  
  def initialize(path) 
    #@path = Dir.entries(path)
    @path = path
  end 
  
  def files
    Dir.entries(@path).select{|file| file != "." && file != ".."}
    
  end 
  
  def import
    files.each do |i|
      Song.new_by_filename(i)
      
    end 
  end 
end 