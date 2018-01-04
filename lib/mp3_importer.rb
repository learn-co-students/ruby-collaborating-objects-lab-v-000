require 'pry'
class MP3Importer
    attr_accessor :path, :files, :song, :artist

    def initialize(path)
        @path = path
    end 

    def files
        @files ||= Dir.entries(path).delete_if {|file| !file.include?('.mp3')}
    end

    def import
       
        files.each {|filename| Song.new_by_filename(filename)}
    end

end 