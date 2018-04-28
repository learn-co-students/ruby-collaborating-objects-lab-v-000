class Song

attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def artist_name=(name)
  if (self.artist.nil?)
    self.artist = Artist.new(name)
  else
    self.artist.name = name
  end
end

def self.new_by_filename(filename)

  artist, song = filename.split(" - ")
  new_song = self.new(song)
  new_song.artist_name = artist
  new_song
end



end


#mp3class below

class MP3Importer
    attr_accessor :path, :files, :song_list


    def initialize(filepath)
       @path = filepath
       @song_list = []
    end

    def files
        files = Dir["#{@path}/*.mp3"]
        files.map{|filename|filename.sub(/^.{21}/,"")}

    end

    def import

        files.each {|filename| Song.new_by_filename(filename)}
    end
end
