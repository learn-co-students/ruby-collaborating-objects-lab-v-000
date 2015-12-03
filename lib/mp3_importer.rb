require "pry"
class MP3Importer

  attr_accessor :path, :files, :songs

  def initialize(path)
    @path = path
    @files = []
    @songs = []
  end

  def files
    Dir.entries(self.path).select { |file| file.include?('mp3') }
  end

  def import
    files.each { |file| songs << Song.new_by_filename(file) }
  end

end