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
         file_names.each do |song|
           song.gsub!(/\.\W\w+\W\w+\W\w+\W/, "")
           file_names_correct << song
         end
       file_names_correct
      end

     def import
       files.each do |file_name_string|
          Song.new_by_filename(file_name_string)
        end
      end

       #file_names = Dir.glob("#{path}/*.mp3").split(" - ")[]
end
