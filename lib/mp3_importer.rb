require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    self.path = filepath
  end

  def files
    files = Dir.entries(self.path)
    files.select {|file| file =~ /.mp3/}
  end


  def import
    files.each { |file| Song.new_by_filename("#{file}")}
  end

end
