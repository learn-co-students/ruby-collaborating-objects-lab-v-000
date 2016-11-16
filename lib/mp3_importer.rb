class MP3Importer
  attr_accessor :path

  def initialize(fp)
    @path = fp
    self.files
  end

  def files
    Dir.entries(self.path).select do |fn|
      fn.match(/\w\.mp3/)
    end
  end

  def import
    self.files.each do |fn|
      Song.new_by_filename(fn)
    end
  end

end
