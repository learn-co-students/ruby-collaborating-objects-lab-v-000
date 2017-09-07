require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    self.path = path
  end

  def files
    Dir.entries(self.path).keep_if { |song| song.include?(".mp3")}
  end

  def import
    self.files.map { |filename| Song.new_by_filename(filename) }
  end

end
