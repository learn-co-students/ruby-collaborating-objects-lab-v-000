require 'pry'
class MP3Importer
  def initialize(path)
    @path = path
  end

  attr_reader :path

  def files
    arr = Dir["#{self.path}/*.mp3"]
    newarr = arr.collect{|filename| filename.sub("#{self.path}/", "")}
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end
end
