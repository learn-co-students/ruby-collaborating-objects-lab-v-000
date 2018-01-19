#require 'pathname'
#pn.Pathname.new("../db/mp3s")
require 'pry'
#file_names = []
#file_names = Dir.entries("db/mp3s")

#file_names = Dir["../db/mp3s"]
class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
  end

   def files
     file_names = []
     file_names_correct = []
        #Dir.entries(path).reject{|entry| entry == "." || entry == ".."}
     file_names = Dir.glob("#{path}/*.mp3")
     #binding.pry
       file_names.each do |song|
         song.gsub!(/\.\W\w+\W\w+\W\w+\W/, "")
         file_names_correct << song
       end
     file_names_correct
    end

   def import(song_object)
     file_names_correct.each do |bleep|
         Song.new_by_filename(song_object)
      end

   end

end
