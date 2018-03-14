require 'pry'
class MP3Importer
  attr_accessor :path
  
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(@path).select{|file| file.include?(".mp3")}
  end
  
  def import
    list = self.files
    list.each do |file|
      Song.new_by_filename(file)
    end
  end
  
end