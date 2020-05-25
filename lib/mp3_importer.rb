class MP3Importer

  attr_accessor :path

  def initialize(path)
    self.path = path
  end

  def files
    files = Dir.entries(self.path)
    files.delete_if { |item| !item.end_with?('.mp3') }
  end

  def import
    filenames = self.files
    filenames.each { |filename| Song.new_by_filename(filename) }
  end

end
