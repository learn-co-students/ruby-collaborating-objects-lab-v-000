require 'pry'
class MP3Importer
attr_accessor :path
@@files = []

  def initialize(path)
    @path = path
  end# of initialize


  def files
    @@files = Dir.entries(path).reject do 
      |file| file == "." ||  file == ".."
    end# of do
  end# of files


  def import
    @@files.each do |file_name|
      song = Song.new_by_filename(file_name)
       artist = song.artist
       artist.add_song(song)
    end# of do 
  end# of import


end# of class