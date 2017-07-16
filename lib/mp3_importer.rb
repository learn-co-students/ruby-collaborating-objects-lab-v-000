
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(path).select {|file| file[/\.mp3$/]}
  end

  def import
    files.each {|filename| Song.new_by_filename(filename)}
  end
end
