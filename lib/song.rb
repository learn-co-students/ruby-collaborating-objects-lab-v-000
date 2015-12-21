class Song
    attr_accessor :name, :artist 
    
    
    
    def initialize (name)
        @name=name
    end

    def self.new_by_filename(file)
    a=file.split(" - ")
    song=self.new(a[1].gsub(".mp3",""))
    song.artist_name = a[0]
    song
    end

    def artist_name=(name)
        self.artist=Artist.find_or_create_by_name(name)
    end
end