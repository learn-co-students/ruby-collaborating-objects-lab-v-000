class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{path}/*").map { |file| file.gsub("#{path}/", "") }
  end

  def import
    files.each do |file|
      artist_name = file.split(" - ")[0]
      song_name = file.split(" - ")[1]
      #genre = file.split(" - ")[2].gsub(/\.mp3$/, "")
      artist = Artist.find_or_create_by_name(artist_name)
      song = Song.new(song_name)
      artist.save
      artist.add_song(song)
    end
  end

end
