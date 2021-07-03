require "pry"
class MP3Importer

  attr_accessor :path

   def initialize(path)
     @path = path
     #binding.pry
   end

   def files
     Dir.entries(path).select {|f| !File.directory? f}
   end

   def import
     files.each{|f| Song.new_by_filename(f)}
   end

 end
