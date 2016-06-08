class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(path).select { |x| x[/\.mp3$/] }
  end

  def import
    self.files.each do |string|
      Song.new_by_filename(string)
    end
  end

end
