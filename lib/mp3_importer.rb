require 'pry'

class MP3Importer
    attr_accessor :path, :files, :song_list


    def initialize(filepath)
        @path = filepath
        @song_list = []
    end

    def files
        files = Dir["#{@path}/*.mp3"]
        files.map{|filename|filename.sub(/^.{21}/,"")}

    end

    def import
        #binding.pry
        files.each {|filename| Song.new_by_filename(filename)}
    end
end
