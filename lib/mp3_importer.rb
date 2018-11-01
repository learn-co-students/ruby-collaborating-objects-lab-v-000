class MP3Importer
    attr_reader :path, :files
    def initialize(file)
        @path = file

    end

    
    def files
        num_of_files = path.length - 2

        Dir.entries(path).slice(2,num_of_files)
    end

    def import 
        files.each{|file| Song.new_by_filename(file)}
    end
end
