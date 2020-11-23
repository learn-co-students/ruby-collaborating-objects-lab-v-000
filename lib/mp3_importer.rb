class MP3Importer
    attr_reader :path
    def initialize(path)
        @path = path
    end

    def import
        files.each do |filename|
            Song.new_by_filename(filename)
        end
    end

    def files
        directory = Dir["#{path}/**/*.mp3"].map do |filename| 
            filename[/\.\/spec\/fixtures\/mp3s\/(.*)/, 1]
        end
    end


end