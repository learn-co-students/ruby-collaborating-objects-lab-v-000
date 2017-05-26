class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
       
    end
    def files
        file_array = Dir[@path +"/*.mp3"]
        
        #delete path from each index
        file_array.each{ |file|
            file.slice!(@path + "/")
        }
    end
    
    def import
       # Song.new_by_filename(...)
    end
end