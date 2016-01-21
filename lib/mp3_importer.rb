class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  

  def files
  Dir["#{path}/*.mp3"].collect do |x|
      File.basename(x)
    end  
  end

  def import
    
    self.files.each do |file| Song.new_by_filename(file) 
    end
    end 
  
end