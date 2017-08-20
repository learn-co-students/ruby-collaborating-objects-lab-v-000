require_relative 'artist.rb'

class Song

    attr_accessor :name, :artist

    def initialize(name)
      @name = name
    end

    def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
    end

    def self.new_by_filename(filename)
      array = filename.split(" - ")
      now = self.new(array[1])
      now.artist_name=(array[0])
      now
    end

end
