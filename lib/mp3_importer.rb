require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.entries(path)
  end

end
