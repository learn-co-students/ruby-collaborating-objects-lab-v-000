require 'pry'
class MP3Importer
      attr_accessor :file, :path
     
      def initialize(path)
        @path = path
      end
      
      def files
        mp3_array = []
        Dir.glob("#{@path}/*.mp3").each do |file_name|
          mp3_name = file_name.split("#{@path}/")
          mp3_array << mp3_name[1]
        end
        mp3_array
      end
      
      def import
        files.each do |file|
          Song.new_by_filename(file)
        end
      end
end