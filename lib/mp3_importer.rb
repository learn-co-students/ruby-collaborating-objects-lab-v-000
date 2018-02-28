require 'pry'

class MP3Importer

    attr_reader :path

   def initialize(path)
     @path = path
   end

   def files
     Dir.glob("#{path}/*.mp3").map do |files|
     files.gsub("#{path}/", "")
   end
   end

   def import
     self.files.each do |file_name|
       Song.new_by_filename(file_name)
    end
  end

end
