require 'pry'
class MP3Importer
  attr_accessor :artist, :song, :name, :path

  def initialize(path)
    @path = path
    self
  end

  def files
    Dir.glob("./spec/fixtures/mp3s/*").collect do |f|
      f.gsub("./spec/fixtures/mp3s/","")
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
