require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select! {|entry| entry.end_with?(".mp3")}
  end

  def import
    files = self.files
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
