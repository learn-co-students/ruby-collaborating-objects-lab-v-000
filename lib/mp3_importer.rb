class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(self.path).select { |e| e.end_with?('.mp3')  }
  end

  def import
    files.each { |e| Song.new_by_filename(e)  }
  end
end
