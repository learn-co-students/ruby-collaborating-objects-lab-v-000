class MP3Importer

  attr_accessor :path

  def initialize (music_path)
    @path = music_path
  end

  def files
    Dir.entries(path).select {|el| el.include?(".mp3")}
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
