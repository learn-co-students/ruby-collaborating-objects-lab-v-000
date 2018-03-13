require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    @songs = []
  end

  def files
    files = Dir.entries(path)
    files.delete_if { |item| !item.end_with?('.mp3') }
  end

  def import
    files.each{|file_name| Song.new_by_filename(file_name)}
  end

end
