require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    @filenames = Dir.entries(@path).delete_if {|file| file.include?(".mp3") == false}
    @filenames.each do |file|
      File.basename(file)
    end
    @filenames
  end

  def import
    files
    @filenames.each {|filename| Song.new_by_filename(filename)}
  end


end
