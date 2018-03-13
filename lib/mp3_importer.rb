require "pry"
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(path)
    files.find_all{|file| file.slice(/.mp3/)}
  end

  def import
    files.each{|filename| Song.new_by_filename(filename)}
  end
end
