class MP3Importer 
     attr_accessor :path
  
  def initialize(path)
       @path = path
  end

  def files
     @files ||= Dir.glob("#{path}/*.mp3").collect{ |x| x.gsub("#{path}/", "")}
  end
     
  def import
     files.each{ |s| Song.new_from_file(s)}
  end
     
     
     
end