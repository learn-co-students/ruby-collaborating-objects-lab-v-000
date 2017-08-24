class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    result = Dir.entries(@path)
    result.shift(2)
    result
  end

  def import
    self.files.each do |song|
      newSong = Song.new_by_filename(song)
    end
    Artist.all
  end

end
