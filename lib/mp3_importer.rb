class MP3Importer
  attr_accessor :path, :files

   def initialize(directory)
     @path = directory
     @files = []

     Dir[@path+'/*'].each { |chr| @files << chr.sub!("./spec/fixtures/mp3s/", "")
      }

   end


   def import
    self.files.each { |filename|
         Song.new_by_filename(filename)
        }
   end
end
