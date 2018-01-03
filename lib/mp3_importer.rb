require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*.mp3").collect do |item|
      item.gsub("#{path}/", "")
    end
  end

  def import
    filenames = self.files
    filenames.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
