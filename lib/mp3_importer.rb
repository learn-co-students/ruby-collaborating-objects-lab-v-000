require 'pry'
class MP3Importer
  attr_accessor :path 
  
 
 def initialize(path)
   @path = path
 end
 
 def files
  Dir.glob("#{@path}/*.mp3").map {|file_name| file_name.gsub("./spec/fixtures/mp3s/", "")}
 end
  
  def import
    files.map {|f| Song.new_by_filename(f)}
  end
  
end