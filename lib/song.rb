class Song

    attr_accessor   :name, :artist, :songs, :song

    def initialize(name)
        @name = name
    end

    def new_by_filename(file_name)
        file that's passed in creates a new song
        
        song = self.new(file_name)
    end

end


