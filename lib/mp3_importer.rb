class MP3Importer

  attr_accessor :song, :artist, :new_artist

  def initialize(path)
    @path = path
    @files = []
    @mp3_files = []
    @new_songs = []
  end

  def path
    @path
  end

  def files
    @files = Dir.entries(@path)
    @files.each do |filename|
      if filename.include? ".mp3"
        @mp3_files << filename
      end
    end
    @mp3_files
  end

  def import
    #Song.new_by_filename(@path)

    self.files
    @mp3_files.each do |filename|
      Song.new_by_filename(filename)
      #song = filename[0...-4]
      #songsplit = song.split[" - "]
      #artist = songsplit[0]
      #songtitle = songsplit[1]
      #Artist.find_or_create_by_name(artist)
      #new_song = Artist.add_song(songtitle)
      #@new_songs << new_song
    end
    #@new_songs
  end

end
