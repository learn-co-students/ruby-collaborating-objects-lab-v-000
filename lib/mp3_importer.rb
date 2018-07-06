require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(self.path).select{|file| file != "." && file != ".."}
    # binding.pry
  end

  def import
    self.files.each{ |filename| Song.new_by_filename(filename) }
  end

end
