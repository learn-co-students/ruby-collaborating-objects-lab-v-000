class MP3Importer
  attr_accessor :path
  @@files = []

   def initialize(filepath)
     @path = filepath
   end

   def files
     @@files = Dir.entries(@path).reject {|file| File.directory?(file)}
   end

   def import
     @@files.each {|file| Song.new_by_filename(file)}
   end

end