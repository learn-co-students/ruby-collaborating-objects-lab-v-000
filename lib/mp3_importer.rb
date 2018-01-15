class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path=path
  end

  def files
    Dir.chdir(@path) do |path|
      Dir.glob("*.mp3")
    end
  end

  def import
   files.each do |file|
     parts = file.split("-")[0]
     artist_name = parts[0]
     song_name = parts[1]
     a = Artist.find_or_create_by_name(artist_name)
     a.add_song(Song.new(song_name))
  end
end
end
