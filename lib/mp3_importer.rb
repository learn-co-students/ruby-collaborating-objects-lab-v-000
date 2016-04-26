class MP3Importer

  require 'pry'

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select {|files| files.end_with?(".mp3")}
  end

  def import
    files.each {|file_name| Song.new_by_filename(file_name)}
  end



end
