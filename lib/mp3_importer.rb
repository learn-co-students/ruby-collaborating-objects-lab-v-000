require_relative "artist.rb"
require_relative "song.rb"

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    list = Dir["#{self.path}/*"]
    list.each do |mp3|
      mp3.slice!("#{path}/")
    end
    list
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
