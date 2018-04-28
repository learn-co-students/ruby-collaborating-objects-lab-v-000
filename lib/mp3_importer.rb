class MP3Importer

  attr_accessor :title

    def self.new_by_filename(filename)
      song = self.new
      song.title = filename.split(" - ")[1]
      song
    end

  end

  class MP3Importer
    def import(list_of_filenames)
      list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
    end

end
