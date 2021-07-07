require 'pry'

class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.entries(@path).select{|song| song.end_with?(".mp3")}
  end
  
  def import
    self.files.each{|song| Song.new_by_filename(song)}
  end
end
