class MP3Importer
  attr_accessor :path

   def initialize(filepath)
     @path = filepath
   end

   def files
     Dir.entries(@path).reject {|file| File.directory?(file)}
   end

   def import
     files.each {|file| Song.new_by_filename(file)}
   end

end