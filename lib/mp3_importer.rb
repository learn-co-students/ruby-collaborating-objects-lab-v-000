require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    self.path = path
  end

  def files
    #binding.pry
    #Dir.chdir(path)
    @files = Dir.glob("#{path}/*.mp3")
    #@files = Dir.glob("*.mp3")
    @files.collect! {|x| File.basename(x)}
  end

  def import
    @files.each {|song| Song.new_by_filename(song)}
  end
end
