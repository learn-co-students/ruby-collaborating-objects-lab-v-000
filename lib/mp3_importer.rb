require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    song_list = Dir["#{@path}/*"]
    song_list.collect do |file|
      file.gsub(@path + "/", "")
    end
  end

  def import
    files.each do |filename|
      song = Song.new_by_filename(filename)
    end
  end


end
