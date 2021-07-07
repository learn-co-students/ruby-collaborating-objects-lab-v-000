class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files1 ||= Dir.glob("#{path}/*.mp3")
    @files ||= @files1.collect{ |file| file.gsub("#{path}/", "") }
  end
    
  def import
    files.each do |file| 
      Song.new_by_filename(file)
    end
  end
  
end