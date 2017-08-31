class Song
  attr_accessor :artist, :name

    def initialize(name)
      @name = name
    end

    def self.new_by_filename(filename)
      song = self.new(filename.split(" - ")[1])
      song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
      song
    end
end
