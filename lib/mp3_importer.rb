require 'pry'

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir["#{@path}/*.mp3"].each {|file| file.slice!("./spec/fixtures/mp3s/")}
  end

  def import
    files
    @files.each {|file| Song.new_by_filename(file)}
  end

end
