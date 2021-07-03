class MP3Importer
  attr_accessor :path, :filename

  
  def initialize(path)
    @path = path 
  end  
  
  def files
    files = []
    
    
    Dir.new(@path).each do |file| #=> Dir.new() creates a new directory from the path that is passed in when initialized
      files << file unless file.length < 4
    end
    files
  end
  
  def import
    count = 0
    while count < 4
      file_name = Song.new_by_filename(filename)
      count += 1
      filename
    end
  end
end 