

class MP3Importer 
  
  attr_accessor :path
  
  @@all = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    raw_files = Dir["#{@path}/*.mp3"]
    files = raw_files.collect{|file| file.split("#{path}/")[1]}
  end 
  
  def import
    files
    song_objs = files.collect {|song_name| Song.new_by_filename(song_name)}
    puts song_objs.inspect
    puts Artist.all.inspect
    song_objs
  end
 
end
    
    