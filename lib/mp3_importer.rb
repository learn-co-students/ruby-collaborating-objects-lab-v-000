

class MP3Importer
attr_accessor :path, :songs
  def initialize(path)
    @path = path
  end

  def files
      new_file = []

      x = Dir["#{@path}/*.mp3"]

      x.each do |file|
        y = file.split(/(\/mp3s\/)/)

        new_file << y[2]

      end
      new_file

  end

  def import

      files.each do |file_name|
        new_song = Song.new_by_filename(file_name)
        if Artist.all == []
          Artist.all << new_song
        else

          not_nil = Artist.all.detect{|is_artist| is_artist.artist.name == new_song.artist.name}

          if not_nil.nil?
            Artist.all << new_song
          end
        end

      end
      Artist.all

    end
end
