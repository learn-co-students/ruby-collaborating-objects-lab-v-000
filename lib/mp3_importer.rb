class MP3Importer 
    attr_accessor :path, :files, :library

    def initialize(path)
        @path = path
        @library = []
    end

    def files
        @files = Dir.entries(path)
            .select{|file_name| file_name.include?(".mp3")}
    end

    def import
    #      files.each do |file_name|
    #      new_song = Song.new_by_filename(file_name) 
    #      @library << new_song 
    #    end      
     @library = files.map do |file_name|
         Song.new_by_filename(file_name)  
       end      
    end
end