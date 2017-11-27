require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(file_path)
    @files = []
    @path = file_path
  end

  def files
    @files = Dir.entries(@path).uniq.reject{|file| file =~ /\.{1,2}$/}
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end

end
