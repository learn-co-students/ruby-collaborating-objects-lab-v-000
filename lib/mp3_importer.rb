require 'pry'
class MP3Importer
  
#Dir.glob("./spec/fixtures/mp3s")
 
  attr_accessor :path
  
  def initialize(path)
    @path = path
    @files = []
  end 

  def files
@files = Dir.glob(@path+"/*.mp3").collect do |file|
      file.gsub!("./spec/fixtures/mp3s/", "")
    end 
  end 

  def import

 Dir.glob(@path+"/*.mp3").each do |file|
       Song.new_by_filename(file)
     end 
  end 
    
end 