require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize (path)
    @path = path
  end

  def files
    @files = Dir.glob("#{@path}/*").select {|x| File.file? x}.collect {|f| File.basename f}
  end

  def import
    self.files
    @files.each {|file| Song.new_by_filename(file)}
  end
end
