require 'pry'
class MP3Importer 
  
   attr_accessor :size, :songs, :name
   attr_reader :path
  
  @@all_files = []
  
  def path
    @path = "./spec/fixtures/mp3s"
  end
  
  def initialize(path)
    @path = path
  end
  
  
  def files
    Dir.entries(@path).select {|file| file.include?(".mp3")}
  end
  
  
  def import #instance method
    files.each do |file|
      Song.new_by_filename(file) #file is element in array
    end
 end
  
end