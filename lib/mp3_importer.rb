require 'pry'
class MP3Importer 
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  
  def files
    @mp3_filenames = []
    mp3_paths = Dir.glob(@path + "/*.mp3")
    mp3_paths.each do |mp3_path|
      mp3_file = mp3_path.split(/.+\//)[1]
      @mp3_filenames << mp3_file
    end
    @mp3_filenames
  end
  
  def import 
    files.each do |filename| 
      song_name = filename.split(" - ")[1]
      Song.new_by_filename(filename)
    end
  end
    
end