require 'pry'
class MP3Importer
  attr_accessor :path, :filenames
  
  def initialize(path)
    @path = path
    @filenames = []
  end
  
  def files 
    self.filenames = Dir.glob("#{path}/*.mp3")
    self.filenames = self.filenames.collect {|file| File.basename(file)}
  end 
  
  def import 
    self.files
    self.filenames.each {|file| Song.new_by_filename(file)}
  end 
end