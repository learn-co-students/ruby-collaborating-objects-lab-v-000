require 'pry'
class MP3Importer
attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    filenames = []
    Dir[File.join(self.path, "*.mp3")].each {|file| filenames << file.split('mp3s/')[1]}
    filenames
  end

  def import
    self.files.each {|filename| Song.new_by_filename(filename)}
  end
end
