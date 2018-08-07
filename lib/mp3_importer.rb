require "pry"
class MP3Importer
  
  attr_accessor :files, :path
  def initialize(path)
    @path = path
  end 
  
  def files
    #where the path goes perhaps?
    @files = Dir.glob("#{@path}/*.mp3")
    @files.map {|filename| filename.gsub("./spec/fixtures/mp3s/", "")}
  end

  def import
    files.each{|filename| Song.new_by_filename(filename)}
  end
  
end
