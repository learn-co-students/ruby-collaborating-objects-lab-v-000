class MP3Importer
 
   attr_accessor :path
 
   def initialize(path)
    @path = path
   end
 
   def files
    files = Dir.glob("#{path}/*.mp3")
    files.map do |f|
       f.slice!(21..-1)
   end
 
  end
 
   def import
    files.each{ |filename| Song.new_by_filename(filename) }
   end
 
 end