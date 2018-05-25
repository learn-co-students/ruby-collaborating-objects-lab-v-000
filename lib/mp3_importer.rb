

class MP3Importer
  
  def initialize(path)
    @path = path
  end 
  
  def path 
    @path 
  end
  
  def files
    @files = []
    Dir.glob("#{@path}/**/*.mp3").each{|a| @files << a.gsub("#{@path}/","")}
    @files
  end
  
  def import 
   self.files.each do |a|
     Song.new_by_filename(a)
    end
  end 
end 