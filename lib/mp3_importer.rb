require './lib/artist.rb'
require './lib/song.rb'
require 'pry'

class MP3Importer
  attr_accessor :path, :filenames

  def initialize(path)
    @path = path
    @filenames = []
  end

  def files
    self.filenames = Dir["#{self.path}/*.mp3"].collect! {|filename| File.basename(filename)}
  end

  def import
    files.collect{|filename| Song.new_by_filename(filename)}
  end

end
