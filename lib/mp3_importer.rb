class MP3Importer

  attr_accessor :path, :filenames

  def initialize(path)
    self.path = path
    self.filenames = []
  end

  def files
    @filenames = Dir["#{path}/*"]
    @filenames.collect! { |file| file.match(/[^\/]+mp3$/)[0] }
  end

  def import
    self.files
    @filenames.each { |filename| Song.new_by_filename(filename) }
  end

end
