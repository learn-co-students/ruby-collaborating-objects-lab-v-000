require 'pry'

class MP3Importer
  attr_accessor :path

  @@music_files = Array.new

  def initialize(path)
    @path = path
  end

  def files
    path = Dir.entries(@path)
    
    path.map do |i|
      if i.include?(".mp3")
        i.split(".mp3,")
        @@music_files << i
      end
    end
    @@music_files

  end

  def import
    @@music_files.each do |i|
      Song.new_by_filename(i)
    end
  end

end