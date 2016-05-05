require 'pry'

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @entries = Dir[@path + "/*"]
    #binding.pry
    @files = @entries.collect { |i| /[^\/]*$/.match(i)[0] }
    #binding.pry
  end

  def import
    #binding.pry
    @files.each{ |i| Song.new_by_filename(i) }
  end

end