class MP3Importer
  attr_accessor :files, :path

  def initialize(path)
    @path = path
    
  end


  def files
    @files = Dir.chdir(@path){|path| Dir.glob("*.mp3")}
  end


end