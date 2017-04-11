require 'pry'


class MP3Importer
  attr_accessor :path, :songs

  def initialize(path)
    @path = path
  end



  def files
    files = Dir["#{@path}/*"]
  end

  
end
