class MP3Importer
  attr_accessor :path, :songs


  def initialize(path)
   @path = path
 end

 def files
    Dir.entries(path).select{|file| file.end_with?(".mp3")}
  end

  def import
    #  @files.each{|filename| Song.new_by_filename(filename)}
    @files ||= Dir.glob("#{path}/*.mp3").collect{|f| f.gsub("#{path}/", "")}
  end
  
end