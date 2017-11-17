require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = []
    @normalized_files = []
    @files << Dir.glob("#{@path}/*.mp3")
    @files.flatten.each do |file|
      normalized_file = file.sub(/.*\//, '')
      @normalized_files << normalized_file
    end
    @normalized_files
  end

  def import
    files
    @normalized_files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
