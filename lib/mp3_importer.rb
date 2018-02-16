require 'pry'

class MP3Importer

  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
  files = Dir.entries("#{@path}").select {|f| !File.directory? f}
  end

  def import
    self.files.collect {|x| Song.new_by_filename(x)}
  end

end
