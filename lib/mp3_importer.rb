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
    self.filenames = Dir["#{self.path}/*.mp3"]
    self.filenames.collect! {|filename| File.basename(filename)}
  end

  def import
    self.files
    self.filenames.collect{|filename| Song.new_by_filename(filename)}
  end

end
