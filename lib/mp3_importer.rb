require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select {|f| !File.directory? f}
  end

  def import
    files.collect do |filename|
      filename.split(" - ").to_a[2]
    end
  end

end
