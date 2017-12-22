require 'pry'

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []

  end

  def files
    directory = Dir.new(self.path)
    directory.each do |file|
      if file.include?(".mp3")
        @files << file
      end
    end
    @files
  end

  def import
    # binding.pry
    self.files
    @files.each do |file|
      Song.new_by_filename(file)
    end
    # binding.pry

  end


end
