class MP3Importer
    attr_accessor :path


    def initialize(path)
        @path = path
    end

    def files
        Dir["#{path}/*"].collect {|item| item.sub("#{path}/", "")}
    end

    def import
        files.collect {|item| Song.new_by_filename(item)}
    end

end
