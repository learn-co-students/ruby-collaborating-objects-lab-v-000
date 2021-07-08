require 'pry'

class MP3Importer

  attr_accessor :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def path
    @filepath
  end

  def files
    @files = Dir.glob("#{@filepath}/*.mp3").collect { |file| file.gsub("#{@filepath}/","")}
    @files
  end

  def import
    #files
    #binding.pry
    files.each { |filename| Song.new_by_filename(filename) }
    #binding.pry
  end

end

#newimport = MP3Importer.new("./spec/fixtures/mp3s")

#binding.pry
