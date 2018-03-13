require 'pry'

class MP3Importer

  attr_accessor  :path

  def initialize(path)
    @path = path

  end

  def files
    Dir.entries(@path).select {|f| !File.directory? f}
      
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
      
    end

  end


end