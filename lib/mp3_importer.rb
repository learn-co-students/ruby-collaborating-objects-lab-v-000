class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files ||= Dir.glob(".mp3")
  end
  
  def import
    
  end
  
end