require 'pry'
class MP3Importer
  attr_accessor :path, :files, :song, :artist

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir["#{self.path}/*.mp3"]
    @files.collect do |file|
      file.slice!(0...21)
    end
    @files
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end


end
