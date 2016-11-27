require 'pry'

class MP3Importer

 attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
   x = Dir.entries(@path).reject {|i| i == ".." }
    x.collect.reject {|a| a == "." }
  end

  def import(path)
   path.each {|file_name| Song.new_by_filename(file_name) }
  end

end
