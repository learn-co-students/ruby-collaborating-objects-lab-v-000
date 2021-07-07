
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
      Dir.glob("#{path}/*").map do |name|
        name.split("/")[4]
    end
  end

  def import
    files.each do |file|
      parts = file.split(" - ")
      artist_name = parts [0]
      song_name = parts[1]
      genre_name = parts[2]
      s = Song.new(song_name)
      

      a = Artist.find_or_create_by_name(artist_name)
      a.add_song(Song.new(song_name))
  end
end


end
