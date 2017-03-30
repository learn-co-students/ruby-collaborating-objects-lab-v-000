class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path=path
  end

  def files
   items = Dir.entries(@path)
   @files = items.select{|file| file.include?(".mp3")}
  end

  def import
    self.files
    @files.each do |song|
      Song.new_by_filename(song)
    end

  end
end
