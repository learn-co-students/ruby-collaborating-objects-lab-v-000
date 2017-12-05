require 'pry'

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    files = Dir["#{@path}/*.mp3"]
    @file_names = files.collect {|file| file.split("mp3s/")[1]}
  end

  def import(files)
    @file_names.each do |file_name|
    Song.new_by_filename(file_name)
    end
  end

end
