class MP3Importer 
  
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end   
  
  def files
    files = [] 
    Dir.new(self.path).each do |file|
     files << file if file.length > 4 
     end  
     files  
   end     

  
  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
    #Song.new_by_filename(some_filename)
  end   
  
end   