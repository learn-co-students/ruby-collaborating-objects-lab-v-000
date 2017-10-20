class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir.entries(@path)
    @files.uniq!
    @files.delete(".")
    @files.delete("..")
    @files
  end

  def import
    @files = Dir.entries(@path)
    @files.uniq!
    @files.delete(".")
    @files.delete("..")

    @files.each do |mp3|
      song = Song.new_by_filename(mp3)
    end
  end
end
