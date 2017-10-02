class MP3Importer
 #i will parse file and send them to the song class
 attr_accessor :path

     def initialize(file_path)
       @path = file_path
     end

     def files
     Dir.entries(path).reject { |e| e == "." || e == ".."}

     end

     def import
       files.each { |file| pippo = Song.new_by_filename(file)}
     end

end
