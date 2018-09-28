require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
    #binding.pry
  end

  def files

    files = Dir.entries(@path)
    @files = Array.new
    files.each do |file|
      if file.end_with?(".mp3")
        @files << file
      end
    end
    @files

  end

  def import

    files_to_import = self.files
    #binding.pry
    files_to_import.each do |file|
      Song.new_by_filename(file)
    end

  end


end
