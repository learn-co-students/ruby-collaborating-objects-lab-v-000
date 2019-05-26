class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
  end 
  
  def files 
    Dir.glob("*.mp3", base: "#{@path}")
  end 
    
  def import 
    self.files.collect {|filename| Song.new_by_filename(filename)}
  end 
end 
    
    