class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
    Dir.entries(path).each do |file|
      if !/.mp3/.match(file).nil?
        @files << file
      end
    end
  end

  def import
    artist_name_array = []
    @files.each do |file|
      temp_name = file.scan(/^[a-zA-Z0-9_\s-]+/).join #slightly modded version of regex formula Paul Fox's formula: http://regexlib.com/REDetails.aspx?regexp_id=507
      name_artist_array = temp_name.split(" - ")
      song_name = name_artist_array[1]
      artist_name_f = name_artist_array[0]
      genre_name = name_artist_array[2]

      if !artist_name_array.include?(artist_name_f)
        create_artist = Artist.new(artist_name_f)
        create_artist.add_song(song_name)
      end

      artist_name_array << artist_name_f


    end
  end

end
