class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        @files = Dir["#{path}/*.mp3"]
        @files.map do |f|
            f.gsub!("./spec/fixtures/mp3s/", "")
        end
    end

    def import
        files.each do |f|
            Song.new_by_filename(f)
        end
    end

end