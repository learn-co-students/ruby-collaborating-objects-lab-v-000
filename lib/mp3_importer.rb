class MP3Importer
  attr_accessor :path  

  def initialize(path)
    @path = path
  end  
 
  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end  

  def import(list_of_filenames)
    list_of_filenames.each {|filename| Song.new_by_filename(filename)}
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end  
end    