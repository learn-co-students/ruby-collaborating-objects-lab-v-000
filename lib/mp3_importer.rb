require 'pry'
class MP3Importer

  attr_reader :path


  
  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.foreach(@path) do |item|
      next if item == '.' or item == '..'
        f = File.basename(item)
        @files << f     
    end
    @files
  end


  def import
    files
    
    @files.each do |file|  
      Song.new_by_filename(file)
    end
  end
 
end
