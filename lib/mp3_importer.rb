require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{self.path}/*.mp3").collect {|file| file.gsub("./spec/fixtures/mp3s/", "")}
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
