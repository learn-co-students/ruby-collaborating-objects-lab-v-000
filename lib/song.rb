require 'pry'
class Song 
  
attr_accessor :name, :artist   

def initialize(name)
  @name = name 
end 

def self.new_by_filename(filename)
    filename.chomp!(".mp3")
    info = filename.split(" - ")
    song = new(info[1])
    song.artist = Artist.find_or_create_by_name(info[0])
    Artist.all.uniq!{|artist| artist.name}
    song.artist.add_song(song)
    song
  end 

end 
