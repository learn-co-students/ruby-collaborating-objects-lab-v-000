require "pry"

class MP3Importer

  attr_accessor :files

  attr_accessor :path

  def initialize path
    @path = path
    @files = []
  end

  def files
    Dir.entries(@path).each do |file|
      @files << file if file.length > 2
    end
    @files
  end


  def import
    self.files
    @files.each do |file|
      song = Song.new_by_filename(file)
    end
  end

end