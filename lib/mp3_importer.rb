class MP3Importer
  attr_reader :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = Dir.entries(@path)
    @mp3_files = []
    files.each {|file| @mp3_files << file if file.end_with?(".mp3")}
    @mp3_files
  end
  
  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end