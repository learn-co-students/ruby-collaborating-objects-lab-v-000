class MP3Importer
  attr_accessor :path

  def initialize(path)
      @path = path
    end


  def files
    Dir.entries(@path).reject {|x| x.length < 4 }

  end


  def import
    files.each do |file|
      parts = file.split(" - ")
      artist_name = parts[0]
      song_name = parts[1]

      i = Artist.find_or_create_by_name(artist_name)
      i.add_song(Song.new(song_name))
    end
  end

end
