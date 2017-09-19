require 'pry'
class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir[@path + '/*'].map { |filepath| File.basename(filepath) }
  end

  def import
    self.files.each { |filename| Song.new_by_filename(filename) }
  end

end
