require 'pry'


class MP3Importer

       attr_accessor :path

      def initialize(file_path)
            @path = file_path
      end

      def files
             Dir.entries(@path).find_all {|f|      !File.directory? f}
             #binding.pry
      end

      def import
            files.each do |file_name|
                  Song.new_by_filename(file_name)
            end
            #binding.pry
      end
      #binding.pry
end
