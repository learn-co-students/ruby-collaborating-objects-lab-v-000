class Song
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(file)
        x=file.split(" - ")
        temp=self.new(x[1])
        temp.artist=Artist.find_or_create_by_name(x[0])
        temp.artist.add_song(temp)
        temp
    end
end
