require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(@path).delete_if do |file|
      (file.include? ".mp3") != true 
    end
  end
  
  def import
    filenames = self.files
    filenames.each do |i|
      Song.new_by_filename(i)
    end
  end
end