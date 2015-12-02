class MP3Importer

  attr_accessor :path, :songs

  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir.entries(path).select{|file| file.end_with?(".mp3")}
  end

  def import
    files.each{|filename| Song.new_by_filename(filename)}
  end

end