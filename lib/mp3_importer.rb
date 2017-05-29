class MP3Importer
  require 'pry'
  attr_accessor :path, :files 

  def initialize(path)
    @path = path 
  end 

  def files 
    files = Dir["#{@path}/*.mp3"]
    files.map! {|i| i = File.basename(i)}
  end 

  def import 
    files.each do |i|
      song = Song.new_by_filename(i)
    end
  end 

  
end 