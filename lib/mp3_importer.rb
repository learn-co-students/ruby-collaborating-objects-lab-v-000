require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @song_array = Dir["#{path}/*.mp3"].to_a
    @song_array.collect {|file| File.basename file}
  end

  def import
    files.each {|record|
      Song.new_by_filename(record)}
  end
end
