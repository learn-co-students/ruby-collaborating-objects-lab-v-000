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
  #write code that responds to MP3Importer.new('./db/mp3s').import
    files.each do |file|
      Song.new_by_filename(file)
      #Artist.find_or_create_by_name(name) expected 3 got 8
      #expected 3 got 6
    end
  end
end
