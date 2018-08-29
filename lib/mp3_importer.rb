# parsing all filenames in db and sending to Song class
require 'pry'

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
    
  end
  
  def files 
    Dir.entries(@path).keep_if { |file| file.match(/(mp3$)/)}
  end
  
  def import
    files.each { |file| Song.new_by_filename(file) }
  end
  
end