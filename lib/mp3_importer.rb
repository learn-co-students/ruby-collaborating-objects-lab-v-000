

class MP3Importer
  attr_accessor :files
  
  @@songs = []
  @@mp3_files = []
  @@artist = []
  
    def initialize(path)
      @files = Dir.entries(path)
      @files
    end
  
    def path
      path = ("./spec/fixtures/mp3s")  
    end
    
    def files
       @files.each {|entry| @@mp3_files << entry if entry.include?(".mp3")}
       @@mp3_files
    end  
    
  
    def import 
      @@mp3_files.each do |file|
         Song.new_by_filename(file)
      end
    end  
      
end