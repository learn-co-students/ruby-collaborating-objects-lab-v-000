require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path=path
  end

  def files
    list_of_files = Dir.entries(@path).select {|x| !File.directory? x}
  end

  def import
      files = self.files
      files.collect do |file|
      song = Song.new_by_filename(file)
      song


    end

  end

end
