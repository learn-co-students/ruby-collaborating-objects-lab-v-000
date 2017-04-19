#####initialize                                                                                                                          
#accepts a file path to parse mp3 files from                                                                                        
#####files                                                                                                                               
#loads all the mp3 files in the path directory                                                                                      
#normalizes the filename to just the mp3 filename with no path                                                                      
#####import                                                                                                                              
#imports the files into the library by creating songs from a filename 

class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end

  def files
    file_names = Dir["#{self.path}/*.mp3"]
    file_names.map! { |file_name| file_name =  file_name.split("/").last }
    file_names
  end

  def import
  self.files.each { |file_name| Song.new_by_filename(file_name) }
  end
end