require 'pry'
class MP3Importer

  attr_reader :path
  attr_accessor :files
 

  def initialize(path)
    @path = path
    @files = Dir.entries(@path).drop(2)
  end

  def files
    @files 
  end

  def import
    @files.each do |file|
      Song.new_by_filename(file)
    end
  end

end