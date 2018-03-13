require 'fileutils'

class MP3Importer
  attr_accessor :path, :files
  @@all = []

  def self.all
    @@all
  end

  def initialize(path = nil)
    @path = path
    @files = []
    dir = Dir.new(path)
    dir.each{|file| @files << file if file.include?('.mp3')}
  end

  def import
    @files.each{|mp3_file|
      Song.new_by_filename(mp3_file)
      }
  end

end