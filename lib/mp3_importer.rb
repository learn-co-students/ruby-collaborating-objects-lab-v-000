
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end


  def files
    Dir.entries(path).reject {|f| f == "." || f == ".."}
  end

#["Action Bronson - Larry Csonka - indie.mp3",
 # "Thundercat - For Love I Come - dance.mp3",
 # "Real Estate - It's Real - hip-hop.mp3",
 # "Real Estate - Green Aisles - country.mp3"]
 def import
   self.files.each do |filename|
     song = Song.new_by_filename(filename)
     Artist.all << song.artist unless Artist.all.include?(song.artist)
   end
 end


  #  self.files.each do |file|
  #    parts = file.split(" - ")
  #    artist_name = parts[0]
  #    song_name = parts[1]
   #
  #    artist = Artist.find_or_create_by_name(artist_name)
  #    artist.add_song(Song.new(song_name))


end
