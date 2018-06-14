#MP3Importer class will create an array of mps3 files based on the file path and sends the filenames to a song class to create a library of music with artists that are unique.

class MP3Importer 
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files
    Dir.chdir(@path) do | path |
        Dir.glob("*.mp3")
    end
  end
  
  def import
    self.files.each do |file_name|
      Song.new_by_filename(file_name) 
    end
  end 
end 

imp = MP3Importer.new("./db/mp3s/")
puts imp.files.last 