class MP3Importer
    attr_accessor :path
    @@all_files = []
    @@all = []
    def initialize(path)
        @path = path      #path value that leads to directory with files needed
    end

    def files
        @@all_files = Dir.glob("#{@path}/**/*.mp3")   # sets class var arr to all files in @path input directory with mp3
                                                # double asterisks mean to recursivly get files from directory so all files are loaded
        @@all_files.map { |file_path| File.basename(file_path) }   # normalizes files to exclude the path portion leaving just file name
                                                             #File.basename will return only the file portion without path
    end

    def import
    
        @@all_files.each do |file|
            Song.new_by_filename(file)
            @@all << song.name
        end
    end
end
