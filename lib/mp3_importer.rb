require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").collect do |file|
      file_name = file.split("/")[4]
    end
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
