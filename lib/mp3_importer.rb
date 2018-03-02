class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path)[2..-1]
  end

  def import
    files.each do |files|
      parts = files.split(" - ")
      artist_name = parts[0]
      song_name = parts[1]

      a = Artist.find_or_create_by_name(artist_name)
      a.add_song(Song.new(song_name))
    end
  end
end
