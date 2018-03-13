require 'pry'

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

# MP3Importer.new('./db/mp3s').import

  def files
    Dir["#{@path}/*.mp3"].map do |filename|
        filename.sub(/[.].+[\/]/, '')
    end
  end

  def import
    self.files.each do |some_filename|
      Song.new_by_filename(some_filename)
    end
  end

end
