require 'pry'
class MP3Importer
  
  attr_accessor :path
  
  
  def initialize(path)
    @path = path
    @all_files = []
  end

  def files
    @all_files = Dir[@path+"/*.mp3"] #look up dir entries
    
    @all_files.collect! do |file_name|
      file_name.split("/").last  
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)      
    end
  end

end
