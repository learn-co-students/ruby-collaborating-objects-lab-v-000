require 'pry'

class MP3Importer
  attr_accessor :path, :mp3_files

  def initialize(path)
    self.path = path
    self.mp3_files = []
  end

  def files
    return self.mp3_files if self.mp3_files.length != 0
    self.mp3_files = Dir.entries(self.path)
    self.mp3_files = self.mp3_files.delete_if { |file| file.match(/.mp3\b/) == nil }
  end

  def import
    self.files
    self.mp3_files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
