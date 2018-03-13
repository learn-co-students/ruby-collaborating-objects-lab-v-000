class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
    @files = []
    files = Dir.entries(path)
    files.each do |song|
      if song.match(/.mp3/)
        @files << song
      end
    end
  end

  def import
    @files.each do |song|
      added = Song.new_by_filename(song)
    end
  end


end
