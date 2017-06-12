require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    # binding.pry
    @files = Dir.entries(@path)
    @files.delete_if {|file| !file.include?(".mp3")}
    @files

  end

  def import
    # binding.pry
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end



end
