require 'pry'
class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        Dir["#{@path}/*.mp3"].collect do |file|
            file.match(/[A-Z]\w*[^.]*(....)/)[0]
        end
    end

    def import
        self.files.each do |file_name|
            song = Song.new_by_filename(file_name)
            if Artist.all.detect{|artist| artist.name == song.artist.name}.nil?
                song.artist.add_song(song)
                Artist.all << song.artist
            end

        end
    end





end
