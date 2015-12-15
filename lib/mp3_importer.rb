

class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path=path
    files
  end

  def files
    Dir.entries(@path).grep(/.mp3/)
  end

  def import
    files.each{|file| Song.new_by_filename(file[1])}
  end
end
