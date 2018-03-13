require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3").collect{|file| file.gsub(/.+mp3s./, '')}
  end

  def import
    self.files.each{|song| Song.new_by_filename(song)}
  end

end
