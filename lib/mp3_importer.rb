require 'pry'
class MP3Importer
 attr_accessor :path
 def initialize(path)
  @path = File.path(path)
 end
 
 def files
   Dir[@path+"/*.mp3"].collect {|file| file.split(/mp3s\//)[1]}
 end
 
 def import
   files.each do|filename| 
   Song.new_by_filename(filename)
   end
 end

end