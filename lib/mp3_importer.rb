class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir["#{self.path}/**/*.mp3"]
    files.map {|file| File.basename(file)}
  end

  def import
    self.files.each do |filename|
      song = Song.new_by_filename(filename)
    end
  end
end
