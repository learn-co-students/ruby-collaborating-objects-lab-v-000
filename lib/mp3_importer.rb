require "pry"

class MP3Importer
  attr_accessor :path

    def initialize(path)
      @path=path
    end

    def files
      imports=[]
      contents = Dir.entries(@path)
      contents.collect do |file|
        imports << file if file.include?(".mp3")
      end
      imports
    end

    def import
      files.collect do |file|
      Song.new_by_filename(file)
      end
    end


end
