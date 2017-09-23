class MP3Importer
    attr_accessor :path
    
    @files = []
    
    def initialize(path)
        @path = path
    end
    
    def import
        all_files = Dir.entries(self.path)
        @files = all_files.select{|file| file.length > 4 && file.slice(file.length - 4, 4) == ".mp3"}
        @files.each do |file|
            Song.new_by_filename(file.slice(0, file.length - 4))
        end
    end
    
    def files
        self.import
        @files
    end
end
