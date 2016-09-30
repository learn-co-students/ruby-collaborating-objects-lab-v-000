require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    self.path = path
  end

  def files
    Dir.chdir(path)
    files = Dir.glob("*.mp3")
    #binding.pry
    #files.collect! {|x| File.basename(x)}
  end

  def import

  end
end
