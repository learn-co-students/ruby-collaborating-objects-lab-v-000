class MP3Importer
    
    def initialize(path)
        @path = path
    end

    def path
        @path
    end

    @@files = []

    def files
        Dir.new(@path).each do |file|
            @@files << file if file.include?(".mp3")
        end
        @@files
    end

    def import
        @@files.each do |name|
            Song.new_by_filename(name)
        end
    end

end