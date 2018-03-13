class MP3Importer
  attr_accessor :path, :artist, :song


  def initialize(path)
   @path = path
 end

 def files
    Dir.entries(path).select{|file| file.end_with?(".mp3")}
  end

  def import
    files.each{|file| Song.new_by_filename(file)}
  #  @files ||= Dir.glob("#{path}/*.mp3").collect{|f| f.gsub("#{path}/", "")}
  end

end
