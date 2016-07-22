class Song
attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def self.new_by_filename(songandartist)
build = songandartist.split(/\.mp3| - /)
newsong = self.new(build[1])
newartist = Artist.new(build[0])
newartist.add_song(newsong)
end

end


