class Song

  attr_accessor :artist, :name


    def initialize (name)
      @name = name
    end

    def self.new_by_filename (file_name)
      song = self.new
      song
    end


end
