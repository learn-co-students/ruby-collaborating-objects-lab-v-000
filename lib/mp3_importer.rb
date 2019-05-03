class MP3Importer

  attr_reader :path

  def initialize(path)
     @path = path
  end

  def files
    @files = Dir["#{path}/*.mp3"]
    @files.map { |file| file.sub(/^\W+[a-z]+\W[a-z]+\W[a-z0-9]+\W/, "") }
  end

  def import
    self.files.each do |file|
      song = Song.new_by_filename(file)
      Artist.all.include?(song.artist) ? nil : Artist.all << song.artist
    end
  end

end
