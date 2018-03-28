require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
   @path = path
  end #def initialize

  def files
    Dir.entries(@path).select {|filename| filename.include?(".mp3")}
  end #def files

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end #def import

end #class MP3Importer
