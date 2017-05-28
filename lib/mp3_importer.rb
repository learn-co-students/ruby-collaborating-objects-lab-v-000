class MP3Importer
  attr_accessor :path, :files
  def initialize(path="")
    @path = path
  end
  def files
    @files = Dir.entries(@path).select{|file| file.end_with?(".mp3")}
  end
  def import
     files = Dir.entries(@path).select{|file| file.end_with?(".mp3")}
     files.each do |file|
       song = Song.new_by_filename(file)
     end
  end
end
