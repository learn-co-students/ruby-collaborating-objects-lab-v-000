require 'pry'
class MP3Importer
  attr_accessor :path, :songs
  
  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.foreach(path) do |file|
      next if file == '.' or file == '..'
      files << file
    end
    files

    #1) can also do following:
    #Dir["#{path}/*.mp3"].collect do |x|
       #File.basename(x)
     #end  

     #2) and:
     #Dir.entries(path).select {|file| file.end_with?(".mp3")}

  end

  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
  end
end