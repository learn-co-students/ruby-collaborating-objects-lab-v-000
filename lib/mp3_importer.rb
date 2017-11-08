require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path).reject {|f| f =~ /\.{1,2}$/}
  end

  def import
    self.files
    @files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
