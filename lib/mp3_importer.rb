require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def path
    @path
  end

  def files
    Dir["#{path}/*.mp3"].each do |string|
      string.slice! "#{path}/"
    end
  end

  def import
    files.each do |song_file|
      Song.new_by_filename(song_file)
    end
  end
end
