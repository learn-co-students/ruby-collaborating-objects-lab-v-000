class MP3Importer

  attr_reader :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir.entries(@path).select {|file| file if file.end_with?(".mp3")}
  end

  def import
    files.each {|file| Song.new_by_filename(file)}  
  end

end