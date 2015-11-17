require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(real_path)
    @path = real_path
#    files = []
#    files = Dir.entries(path)
#    @files = files.shift.shift
  end

  def files
    Dir.entries(path).select{|file| file.end_with?(".mp3")}
  end

  def import
    files.each{|string| Song.new_by_filename(string)}
  end
end


