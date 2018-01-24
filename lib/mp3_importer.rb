class MP3Importer

  def initialize(test_music_path)
    @path = test_music_path
  end

  def path
    @path
  end

  def files
    Dir.entries(@path)
    Dir.entries(@path).drop(2)
  end

  def import
    array = []
    Dir.entries(@path)
    Dir.entries(@path).drop(2).each do |filename|
      song = Song.new_by_filename(filename)
    end
  end

end
