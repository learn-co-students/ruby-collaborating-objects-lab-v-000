class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    all_files = Dir.entries(@path)
    return all_files.select {|filename| filename.end_with?(".mp3")}
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
