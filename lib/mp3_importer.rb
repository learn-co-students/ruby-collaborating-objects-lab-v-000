#require 'pathname'
#pn.Pathname.new("../db/mp3s")
require 'pry'
file_names = []
file_names = Dir.entries("db/mp3s")

#file_names = Dir["../db/mp3s"]
class MP3Importer
   def files(file_names)
     parts = []
     file_names.each do |filename|
       Song.new_by_filename(filename)

     end
   end



end
