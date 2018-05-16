require 'pry'

class MP3Importer

  attr_accessor :path, :file_list

  def initialize(filepath)
    @path = filepath
    @file_list = []
  end

  def files
    Dir.foreach(path) do |file|
      if file.end_with?("mp3")
        file_list << file
      end
    end
    file_list
  end

  def import
    files.each {|filename| Song.new_by_filename(filename)}
  end

end
