#This will parse all the filenames in the db/mp3s folder and send the filenames to the Song class
require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []

    Dir.entries(@path).each do |file| 
      @files << file unless (file == "." || file == "..")  
    end
  end

  def files
    @files
  end

  def import
    @files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
