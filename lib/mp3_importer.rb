class MP3Importer 
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end
  
  def files
    binding.pry
     Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/", "") }
  end
  
  def import(file_names)
    file_names.each {|filename| Song.new_by_filename(filename)}
  end
end