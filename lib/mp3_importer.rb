class MP3Importer
  attr_accessor :path, :file_array
  def initialize(path)
    @path=path
  end 
  
  def files
    @file_array=Dir.entries(self.path)
    @file_array.delete_if{|x| x.include?('.mp3')==FALSE}
  end 
    
  def import
    self.files.each {|f| 
      Song.new_by_filename(f)}
  end 
    
end
    