require 'pry'

class MP3Importer

    attr_accessor :path, :files

    def initialize(path)
        @path = path
        @files = self.files
    end 

    def files
        files = Dir["#{@path}/*.mp3"]
        files.each do |entry|
            entry.slice!("#{@path}/")
        end
    end

    def import
        @files.each do |filename|
            Song.new_by_filename(filename)
        end
    end

end