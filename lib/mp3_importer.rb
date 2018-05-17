require 'pry'

class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(self.path).select {|file| file[/\.mp3$/]}
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
