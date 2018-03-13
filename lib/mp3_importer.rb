require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{path}/*mp3").collect{|file| file.gsub("#{path}/", "")}
    @files
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
