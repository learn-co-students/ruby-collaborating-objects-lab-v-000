class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end
  

  def files 
   Dir.chdir(@path) do |mp3|
     Dir.glob("*.mp3")
   end
  end
    
  def import 
    self.files.each do |filename|
    song = Song.new_by_filename(filename)
  end
  end
  
end