require "pry"
class MP3Importer
  attr_accessor :path, :Mp3Importer

  def initialize(path)
    @path = path
    @MP3Importer = MP3Importer
    @files = files
 # binding.pry
  end

  def files
    Dir.entries(@path).select {|file| file.size >= 5}
  end

  def import
    @files.each{|file_name| Artist.all << Song.new_by_filename(file_name)}
  end


end