require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end

  def files
    Dir[path + "/*.mp3"].map do |entry| 
      entry.split("mp3s/")[1]
    end
  end
  
end

