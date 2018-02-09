class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  
  def files
   files = Dir.glob("#{@path}/*.mp3")
   @files = files.collect{|s| s.scan(/[A-Z].+/)}.flatten
  end 
  
  def import 
    #binding.pry
    files.each do |file|
      Song.new_by_filename(file)
    end
  end 
end

