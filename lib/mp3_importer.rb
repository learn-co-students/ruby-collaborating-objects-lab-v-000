require "pry"
class MP3Importer
  
  attr_accessor :path
  
  @@files = []
 
  def initialize(path = @path)
    @path = path
    @@files << Dir.entries("#{path}").select {|f| !File.directory? f}
  end
  
  def import(list_of_filenames)
    @@files.each{ |filename| Song.new_by_filename(filename) }
  end
  
  def files
    @@files
  end
end