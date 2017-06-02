class MP3Importer
  attr_reader :path, :files
  
  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path).select {|f| !File.directory? f}
  end

  def import
    self.files
    @files.each do |filename|
      song = Song.new_by_filename(filename)
      song.artist.add_song(song)
    end
  end
end
