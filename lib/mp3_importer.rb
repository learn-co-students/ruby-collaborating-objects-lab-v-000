require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.entries(self.path).reject{|f| f == "." || f == ".."}
  end

  def import
    self.files.collect{|s| Song.new_by_filename(s)}
  end

end
