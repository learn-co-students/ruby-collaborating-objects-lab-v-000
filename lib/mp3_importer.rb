class MP3Importer  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files 
    files = []
    Dir.open(self.path).each do |file|
      if file.size > 4
        files << file 
      end 
    end  
    files
  end

  def import 
    self.files.each do |filename|
      song = Song.new_by_filename(filename)
    end  
  end
end