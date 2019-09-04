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

      #if we complete the each block with {} on a single line, then it implicitly returns that manipulated data.
      #@files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }

     def import
       #an instance method to call a method on each file in the import instance
       files.each { |file_name_string| Song.new_by_filename(file_name_string)}
        #the new by filename is a class method because we need to create a new instance
        #instance methods are used to manipulate instances that already exist

     end


end
