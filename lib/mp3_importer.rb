require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files
  end

  def files
  @@all = Dir.glob(path + "/*.mp3").collect{|files| files.split(/\mp3s\//)[1] }
  @@all
  end

  def import
    # binding.pry
    files.each{|filename| Song.new_by_filename(filename)}
  end
end
