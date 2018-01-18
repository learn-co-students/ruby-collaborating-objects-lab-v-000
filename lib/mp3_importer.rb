#require 'pathname'
#pn.Pathname.new("../db/mp3s")
require 'pry'
file_names = []
file_names = Dir.entries("db/mp3s")

#file_names = Dir["../db/mp3s"]
class MP3Importer

  def initalize(file_path)
    @file_path = file_path
  end

   def files(file_path)
     file_names = []
     file_names = Dir.entries(file_path)

     file_names.each do |filename|

     end
   end

   def import
     song = self.new_by_filename(filename)
     parts = []
     parts = filename.split(" - ")
     Artist.name = parts[0]
     Song.name = parts[1]
   end

end
