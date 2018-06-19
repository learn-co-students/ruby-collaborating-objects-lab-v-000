require 'pry'
class MP3Importer
  
  attr_reader :path, :files
  
  def initialize (filepath)
    @path = filepath
    @files = []
  end
  
  def files
    Dir["#{@path}/**/*.mp3"].each do |file|
      @files << file.gsub!(/.\/spec\/fixtures\/mp3s\//,"")
    end

  end
  
  def import
    self.files
    
    @files.each do |file|
      Song.new_by_filename(file)
    end
    #binding.pry
  end
  
end