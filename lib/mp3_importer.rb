require 'pry'
class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
    @files = files
  end
  def files
  #binding.pry
  @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end
  def import
  list = files.each{|f| Song.new_by_filename(f)}
  #by creating songs from a filename = Song.new_by_filename(f)
  list
  binding.pry
  end
end
