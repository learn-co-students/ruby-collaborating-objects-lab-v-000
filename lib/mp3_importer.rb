require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(filename)
    self.path = filename
  end

  def files
    binding.pry
  end

  def import
  end

end
