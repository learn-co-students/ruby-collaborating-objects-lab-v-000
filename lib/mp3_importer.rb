class MP3Importer
  attr_accessor :path
  @@all = []


  def initialize(path)
    @path = path
  end
  
  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.size > 4
    end
    files
  end
 
  
  def import
    ## import filename as a song 
    # remember in the library of songs 
    # binding.pry
    self.files.each do |filename|
      Song.new_by_filename(filename) 
    end
    # filename
    # binding.pry
    
  end
  


  
  
end