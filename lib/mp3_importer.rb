require "pry"
class MP3Importer
    attr_accessor :path


    def initialize(path)
      @path = path
    end

    def files
   new_files =   Dir.entries(@path).delete_if{|song| !song.include?("mp3")}
   new_files
    # binding.pry
    end

    def import
      self.files.each do |file|
        # binding.pry
        Song.new_by_filename(file)

      end
    end

end
