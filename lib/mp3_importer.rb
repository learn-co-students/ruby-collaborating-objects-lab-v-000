require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = []
    Dir.foreach(self.path) {|song| @files << song if song.include? ".mp3"}
    @files
  end

  def import
    self.files.each { |filename| Song.new_by_filename(filename)}
  end

end
