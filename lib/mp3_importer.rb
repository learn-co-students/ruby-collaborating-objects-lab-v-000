require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).delete_if{|i| i == "." || i == ".."}
  end

  def import
    files.each{|i| Artist.all << Song.new_by_filename(i)}
    binding.pry
  end

end


# Artist.all.detect{|i| i.name == "Real Estate"}
