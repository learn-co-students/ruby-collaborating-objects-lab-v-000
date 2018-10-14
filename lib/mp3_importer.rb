class MP3Importer 
  attr_accessor :path
  
  def initialize(path) 
    @path = path
  end
  
  def files
    files = Dir.glob("#{path}/*.mp3")
    files.map do |x|
       x[21..-1]
     end
  end 

  def import
    files.each do |x|
      Song.new_by_filename(x)
    end 
  end 
end 

  # def files
  #   @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  # end
  
  # def import
  #   files.each{|f| Song.new_by_filename(f)}
  # end