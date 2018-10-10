require "pry"

class MP3Importer
  
  attr_accessor :path, :files, :song  
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.glob("#{@path}/*.mp3").collect{|file| file.to_s.slice(21..-1)}
  end
 #use ||= operator to either read off the existing files, or create them 
  #now use collect or map on this to turn all of the files into strings without the path on the end

  def import
    self.files.each do |file_name| 
      Song.new_by_filename(file_name)
    end 
  end

end 
