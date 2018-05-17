require 'pry'
class MP3Importer
  
  @@all = []
  
  def initialize(file_path)
    @file_path = file_path
  end
  
  def path
    @file_path
  end
  
   def import
    allMp3Files = Dir.glob(@file_path + "/*.mp3").select {|f| File.file?(f) }
    @@all = allMp3Files.map {|file| Song.new_by_filename(File.basename(file))}
    puts @@all
  end
  
  def files
   allMp3Files = Dir.glob(@file_path + "/*.mp3").select {|f| File.file?(f) }
   @files = allMp3Files.map {|file| File.basename(file)}
  end
end