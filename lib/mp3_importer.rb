require_relative 'song.rb'

class MP3Importer

  #set path attribute on initialization
  attr_accessor :path


    def initialize(path)
        @path = path
        @files = []
    end

    def files
        files = Dir["#{@path}/*.mp3"]
        files.each do |file|
            @files << File.basename(file)
        end
        @files
    end

    def import
        self.files
        @files.each {|filename| Song.new_by_filename(filename) }
    end

end

#starter = MP3Importer.new "../db/mp3s"
#starter.files
#starter.import
