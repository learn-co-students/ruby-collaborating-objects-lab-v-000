require 'pry'
class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir @path
    filenames = Dir['*.mp3']
    filenames.join(",")
  binding.pry  
  end
  
  def import
    
  end

end