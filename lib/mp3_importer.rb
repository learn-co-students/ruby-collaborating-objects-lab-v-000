require 'pry'
class MP3Importer
  attr_accessor :path

  path = Pathname('./db/mp3s')

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).collect {|file| file if file.include?(".mp3")}.compact!
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
