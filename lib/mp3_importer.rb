require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(filepath)
    @path = filepath
    files
  end

  def files
    Dir.chdir(@path) do
      @files = Dir.glob("*.mp3")
    end
  end

  def import
    @files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
