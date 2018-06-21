class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        @files = Dir.entries(@path)
        @files.delete_if {|file| !file.end_with?(".mp3")}
    end

    def import
        self.files.each do |file|
            song = Song.new_by_filename(file)
            Artist.all << song.artist unless Artist.all.include?(song.artist)
        end
    end
end
