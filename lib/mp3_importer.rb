class MP3Importer
  attr_accessor :path 
  
  def initialize(file_path)
    self.path = file_path
  end
  
  def files 
    Dir.entries(path).reject {|entry| entry == "." || entry == ".."}
  end 
  
  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end 
  
end