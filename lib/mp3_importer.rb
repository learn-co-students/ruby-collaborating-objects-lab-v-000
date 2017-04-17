class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @song_array = Dir["path/*.mp3"].to_a
  end

  def import
    @song_array.each do |song|
      Song.new_by_filename(song)
    end
  end
end
