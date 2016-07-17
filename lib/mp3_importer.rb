require 'pry'
class MP3Importer
attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path).keep_if {|file| file.include? "mp3"}
  end

  def import
    self.files.each {|some_filename| Song.new_by_filename(some_filename)}
  end
end
