class MP3Importer
 attr_accessor :path, :artist, :song

 def initialize(path)
  @path = path
 end

 def files
  Dir.glob("#{path}/*.mp3").collect do |f|
    f.gsub("#{path}/", "")
  end
 end

 def import
   files.collect do |file|
     #binding.pry
    new_song = Song.new_by_filename(file)
    #binding.pry
   end
 end

end
