require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.glob("#{@path}/*.mp3").collect{|file| file.split("/").last}
  end

  def import
    files = self.files
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end