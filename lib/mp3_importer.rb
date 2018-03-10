class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path)[2..-1]
  end

  def import
    files.each do |file|
      part = file.split(" - ")
      artist_name = part[0]
      song_name = part[1]

      a = Artist.find_or_create_by_name(artist_name)
      a.add_song(Song.new(song_name))
  end

end


end
