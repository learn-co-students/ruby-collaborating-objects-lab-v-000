require "pry"
class MP3Importer
  attr_accessor :path, :Mp3Importer

  def initialize(path)
    @path = path
    @MP3Importer = MP3Importer
    @files = files
 # binding.pry
  end

  def files
    @files = Dir.entries(@path).select {|file| file.size >= 5}
  #binding.pry
  end

  def import
    @files.each{|filename| Song.new_by_filename(filename)}
  end
 

end