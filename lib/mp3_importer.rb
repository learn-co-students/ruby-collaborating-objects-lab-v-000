require "pry"
class MP3Importer
  
  attr_accessor :file, :path
  
  def initialize(path)
    @file = file
    @path = path
  end 
  
  def files
    x = Dir.glob("#{@path}/*.mp3")
    x.collect do |e|
      e.gsub("./spec/fixtures/mp3s/", "") 
    end
  end 
  
  def import
    files.each {|name| Song.new_by_filename(name)}
  end 
end 