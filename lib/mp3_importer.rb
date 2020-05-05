require 'pry'
class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir @path do |file|
      @files = Dir.glob('*.mp3')
    end
  end
  
  def import
    @files = files
    files.each{ |filename|
      Song.new_by_filename(filename) }
  end

end