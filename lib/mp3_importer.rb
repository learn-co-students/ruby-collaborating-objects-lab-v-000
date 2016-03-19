

class MP3Importer

  attr_accessor :path


  def initialize(path)
    @path = path 

  end

  def files
    #return array with all mp3 files in mp3 directory and remove path for each file
    Dir["#{@path}/*.mp3"].collect {|file_name| file_name.gsub("#{path}/", "")}
   
  end

  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)} 
  end



end