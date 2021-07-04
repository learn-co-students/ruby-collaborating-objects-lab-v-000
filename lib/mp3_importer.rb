class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end 
  
  def files
    files = Dir.entries(self.path)
    files.delete_if {|file| file.split(".")[1] != "mp3"}
  end

  def import
    files = self.files
    files.each {|file| Song.new_by_filename(file.split(".")[0])}
  end
  
end