require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    song_list = Dir.glob("#{path}/*.mp3")
    song_list.map { |file|  file.split(/\b\//)[3]}
  end

  def import
    files.each { |filename| Song.new_by_filename(filename) }
  end

end
