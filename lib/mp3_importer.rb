class MP3Importer
    attr_accessor :path, :file_array

    def initialize(path)
        @path = path
       
    end
    def files
        @file_array = Dir[@path +"/*.mp3"]
        
        #delete path from each index
        @file_array.each{ |file|
            file.slice!(@path + "/")
        }
    end

    def import
        if @file_array.nil?
            self.files
        end
        @file_array.each{ |filename|
            Song.new_by_filename(filename)
        }
       
    end
end