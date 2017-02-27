class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{self.path}/*.mp3")
    @files = @files.collect{|x| x.gsub("#{path}/", "")}
  end

  def import
    files.each do |filename|
      new_song = Song.new_by_filename(filename)
      new_song.artist.songs << new_song
    end
  end

end
