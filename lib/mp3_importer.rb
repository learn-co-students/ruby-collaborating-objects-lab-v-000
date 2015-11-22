class MP3Importer 

  attr_accessor :path

  def initialize(file)
    @path = file
    
  end

  def files
    Dir.entries(path).select {|file| file.end_with?(".mp3")}
  end

  def import

    self.files.each do |string|
     Song.new_by_filename(string)
   end 
  end 

end 