require "pry"

class MP3Importer

  attr_accessor :song

  def initialize(file_path)
    @file_path = file_path
  end

  def path
    @file_path
  end

  def import
    files.each{|filename| Song.new_by_filename(filename)}
  end


  def files
    files = Dir.glob("#{@file_path}/*")
      files.each do |long_name|
        long_name.slice! "#{@file_path}/"
      end
  end

end
