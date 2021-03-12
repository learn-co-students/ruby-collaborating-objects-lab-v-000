

class MP3Importer 
 
  attr_accessor :path, :files 

  def initialize(path)
    @path = path
     
  end 

  def files 
     Dir["#{@path}/*.mp3"]
      
     @files = Dir["#{@path}/*.mp3"]
     
     @files.collect!{|x|File.basename(x)}
     
  end 


  def import 
   self.files 
   @files.each { |name|     
      Artist.all << name.split('-')[0]
    } 
    Artist.all = Artist.all.uniq 
  end 

end 