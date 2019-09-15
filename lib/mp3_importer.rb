class MP3Importer

  def initialize(test_music_path)
    @test_music_path = test_music_path
    @files = []
    @library = []
  end

  def path
    @test_music_path
  end

  def files
    Dir.foreach(@test_music_path){|filename|
      if filename.include? ".mp3"
        @files << filename
      end
    }
    return @files
  end

  def import
    @files.each do |song|
      new_song = Song.new_by_filename(song.split(" - ")[1])
    end
  end

end
