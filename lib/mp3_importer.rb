require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(self.path).reject{|filename| filename =~ /^\.{1,2}$/}
  end

  def import
    files.each { |filename| Song.new_by_filename(filename) }
  end

end
