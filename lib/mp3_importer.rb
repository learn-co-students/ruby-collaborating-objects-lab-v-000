class MP3Importer
  attr_accessor :artist, :files
  @@all=[]
       
  def initialize(filepath)
     @files=[]
    @filepath = filepath        
      Dir["#{@filepath}/*.mp3"].each do |file|
      @files << File.basename(file)
    end   
  end
  
  def all
    @@all
  end
  
  def path
    return @filepath
  end
  
  def import
     @files.each{|file_name| 
       @@all << Song.new_by_filename(file_name)}
      
  end

end