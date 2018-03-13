class MP3Importer

   attr_accessor :path

   def initialize(path)
     @path = path
   end

   def files
     Dir.entries(@path).reject {|f| File.directory? f}
   end

   def import
     files.each do |array|
       song = Song.new_by_filename(array)
     end
   end


 end