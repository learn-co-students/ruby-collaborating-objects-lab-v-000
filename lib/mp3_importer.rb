class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select {|filename| filename.include?(".mp3")}
  end

  def import
    self.files.each do |filename|
      song = Song.new_by_filename(filename)
      Artist.all << song.artist unless Artist.all.include?(song.artist)
    end
  end

end
