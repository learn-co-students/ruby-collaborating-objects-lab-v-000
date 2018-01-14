class MP3Importer
  attr_reader :path
  
  def initialize(name)
    @path = path
  end  
  
  def files
    Dir.entries(path)[2..-1]
  end
  
  def import 
   files.each do |file|
     parts = file.split("-")
     artist_name = parts[0]
     song_name = parts[1]
     a = Artist.find_or_create_by_name(artist_name)
     a.add_song(Song.new(song_name))
  end  
  
end