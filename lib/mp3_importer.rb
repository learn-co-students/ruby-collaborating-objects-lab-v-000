class MP3Importer
  require 'pry'
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select {|entry| entry.end_with?(".mp3")}
  end

  def import
    self.files.each {|file| Song.new_by_filename(file) }
  end

end
